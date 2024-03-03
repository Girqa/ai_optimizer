//
// Created by Ярослав on 14.01.2024.
//

#include "NetworkController.h"

void print(const RowVector& vec) {
    std::cout << '[';
    for (int i = 0; i < vec.size(); ++i) {
        std::cout << vec[i] << ' ';
    }
    std::cout << ']' << std::endl;
}

void print(const Matrix& mtx) {
    std::cout << '[';
    for (int i = 0; i < mtx.rows(); ++i) {
        std::cout << "\n[";
        for (int j = 0; j < mtx.cols(); ++j) {
            std::cout << mtx.coeffRef(i, j) << ' ';
        }
        std::cout << ']';
    }
    std::cout << "\n]\n";
}

NetworkController::NetworkController(Network* net, LossFunction* lossFunction, Scalar learningRate, bool log):
                                     _net(net),
                                     _lossFunction(lossFunction),
                                     _learningRate(learningRate),
                                     _log(log) {}

void NetworkController::train(RowVector& x, RowVector& y) {
    propagateForward(x);
    if (_log) {
        std::cout << "Loss = " << _lossFunction->loss(*_net, y) << '\n';
    }
    updateOutputError(y);
    propagateBackward();
    updateNetworkWeights();
}

void NetworkController::train(std::vector<RowVector>& X, std::vector<RowVector>& Y) {
    for (uint i = 0; i < X.size(); ++i) {
        train(X[i], Y[i]);
    }
}

RowVector NetworkController::predict(const RowVector& x) {
    propagateForward(x);
    return _net->output->output;
}

// In this place can be used defined optimizer
void NetworkController::updateOutputError(const RowVector& y) {
    _net->output->errors = _lossFunction->dLoss(*_net, y);
}

void NetworkController::propagateForwardLayer(HiddenLayer* layer, const RowVector& previousOut, const Matrix& weights) {
    layer->inputsAccumulation = previousOut * weights;
    for (int i = 0; i < layer->output.size(); ++i) {
        layer->output[i] = layer->activation->f(layer->inputsAccumulation[i]);
    }
}

void NetworkController::propagateForward(const RowVector& x) {
    _net->input->output.block(0, 0, 1, _net->input->output.size() - 1) = x;

    propagateForwardLayer(_net->hiddenLayers.front(), _net->input->output, _net->weights.front());
    for (int i = 1; i <= _net->weights.size() - 2; ++i) {
        propagateForwardLayer(_net->hiddenLayers[i], _net->hiddenLayers[i - 1]->output, _net->weights[i]);
    }
    propagateForwardLayer(&*_net->output, _net->hiddenLayers.back()->output, _net->weights.back());
}

void NetworkController::propagateBackwardLayer(HiddenLayer* layer, const HiddenLayer& nextLayer, const Matrix& weights) {
    layer->errors = nextLayer.errors * weights.transpose();
    for (int i = 0; i < layer->errors.size(); ++i) {
        layer->errors[i] = layer->activation->df(layer->inputsAccumulation[i]);
    }
}

void NetworkController::propagateBackward() {
    propagateBackwardLayer(_net->hiddenLayers.back(), *_net->output, _net->weights.back());
    for (int i = _net->hiddenLayers.size() - 2; i >= 0; --i) {
        propagateBackwardLayer(_net->hiddenLayers[i], *_net->hiddenLayers[i + 1], _net->weights[i + 1]);
    }
}

// All layers excluding output have bias -> need to ignore last column
void NetworkController::updateGivenWeights(Matrix* weights, const RowVector& previousOut, const HiddenLayer& nextLayer) {
    for (int r = 0; r < weights->rows(); ++r) {
        for (int c = 0; c < weights->cols() - 1; ++c) {
            weights->coeffRef(r, c) += _learningRate * previousOut[r] * nextLayer.errors[c];
        }
    }
}

void NetworkController::updateOutputWeights(Matrix* weights, const RowVector& previousOut, const HiddenLayer& nextLayer) {
    for (int r = 0; r < weights->rows(); ++r) {
        for (int c = 0; c < weights->cols(); ++c) {
            weights->coeffRef(r, c) += _learningRate * previousOut[r] * nextLayer.errors[c];
        }
    }
}

void NetworkController::updateNetworkWeights() {
    updateGivenWeights(&_net->weights.front(), _net->input->output, *_net->hiddenLayers.front());
    for (int i = 1; i < _net->weights.size() - 1; ++i) {
        updateGivenWeights(&_net->weights[i], _net->hiddenLayers[i - 1]->output, *_net->hiddenLayers[i]);
    }
    updateOutputWeights(&_net->weights.back(), _net->hiddenLayers.back()->output, *_net->output);
}
