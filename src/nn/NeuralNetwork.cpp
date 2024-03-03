//
// Created by Ярослав on 05.01.2024.
//

#include "NeuralNetwork.h"

#include <memory>


void print(RowVector& vec) {
    std::cout << '[';
    for (int i = 0; i < vec.size(); ++i) {
        std::cout << vec[i] << ' ';
    }
    std::cout << ']' << std::endl;
}

void print(Matrix& mtx) {
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

NeuralNetwork::NeuralNetwork(std::vector<uint> topology, Scalar learningRate) {
    this->topology = topology;
    this->learningRate = learningRate;

    for (uint i = 0; i < topology.size(); i++) {
        // initialize neuron layers
        if (i == topology.size() - 1) {
            neuronLayers.emplace_back(topology[i]);
        }
        else {
            // hidden layers have bias
            neuronLayers.emplace_back(topology[i] + 1);
            neuronLayers.back().coeffRef(topology[i]) = 1.0;
        }

        // initialize cache and delta vectors
        cacheLayers.emplace_back(neuronLayers.back().size());
        layersErrors.emplace_back(neuronLayers.back().size());

        // initialize weights matrix
        if (i > 0) {
            if (i != topology.size() - 1) {
                weights.emplace_back(topology[i - 1] + 1, topology[i] + 1);
                weights.back().setRandom();
                weights.back().col(topology[i]).setZero();
                weights.back().coeffRef(topology[i - 1], topology[i]) = 1.0;
            }
            else {
                weights.emplace_back(topology[i - 1] + 1, topology[i]);
                weights.back().setRandom();
            }
        }
    }
}

void NeuralNetwork::propagateForward(const RowVector& input)
{
    neuronLayers.front().block(0, 0, 1, neuronLayers.front().size() - 1) = input;

    for (uint i = 1; i < topology.size(); i++) {
        neuronLayers[i] = neuronLayers[i - 1] * weights[i - 1];
        cacheLayers[i] = neuronLayers[i]; // save sum of weighted inputs for back prop
        if (i != topology.size() - 1) {
            // calc activated state
            neuronLayers[i] = neuronLayers[i].unaryExpr([](double v){ return activationFunction(v); });
        }
    }
}

void NeuralNetwork::propagateBackward(const RowVector& output)
{
    calculateErrors(output);
    updateWeights();
}

void NeuralNetwork::calculateErrors(const RowVector& output)
{
    layersErrors.back() = output - neuronLayers.back();

    for (uint i = topology.size() - 2; i > 0; i--) {
        layersErrors[i] = layersErrors[i + 1] * weights[i].transpose();
        if (i != topology.size() - 2) {
            auto derivs = cacheLayers[i].unaryExpr([](double v){ return activationFunctionDerivative(v); });
            layersErrors[i] = layersErrors[i].cwiseProduct(derivs);
        }

    }
}

void NeuralNetwork::updateWeights()
{
    // topology.size()-1 = weights.size()
    for (uint i = 0; i < topology.size() - 1; i++) {

        // to keep bias the same
        uint cols = i == topology.size() - 2 ? weights[i].cols() : weights[i].cols() - 1;

        for (uint c = 0; c < cols; c++) {
            for (uint r = 0; r < weights[i].rows(); r++) {
                weights[i].coeffRef(r, c) += learningRate
                        * layersErrors[i + 1][c]
                        * neuronLayers[i][r];
//                if (i != topology.size() - 2) {
//                    weights[i] *= activationFunctionDerivative(cacheLayers[i + 1][c]);
//                }
            }
        }
    }
}

void NeuralNetwork::train(std::vector<RowVector>& input_data, std::vector<RowVector>& output_data)
{
    for (uint i = 0; i < input_data.size(); i++) {
        std::cout << "Input to neural network is : " << input_data[i] << std::endl;
        propagateForward(input_data[i]);
        std::cout << "Expected output is : " << output_data[i] << std::endl;
        std::cout << "Output produced is : " << neuronLayers.back() << std::endl;
        propagateBackward(output_data[i]);
//        std::cout << "Layer 0" << std::endl;
//        print(neuronLayers[0]);
//        std::cout << "Layer 1" << std::endl;
//        print(neuronLayers[1]);
        std::cout << "MSE : " << std::sqrt(layersErrors.back().dot(layersErrors.back()) / layersErrors.back().size()) << std::endl;
    }
}

Scalar NeuralNetwork::activationFunction(Scalar x) {
//    return 1 / ( 1 + exp(-1 * x) );
        return x;
}

Scalar NeuralNetwork::activationFunctionDerivative(Scalar x) {
//    return activationFunction(x) * (1 - activationFunction(x));
        return 1;
}

RowVector NeuralNetwork::predict(const RowVector& object) {
    // TODO
    propagateForward(object);
    return neuronLayers.back();
}
// you can use your own code here!
