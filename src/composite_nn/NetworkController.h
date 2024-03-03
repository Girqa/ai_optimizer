//
// Created by Ярослав on 14.01.2024.
//

#ifndef AI_NETWORKCONTROLLER_H
#define AI_NETWORKCONTROLLER_H

#include "Network.h"
#include "LossFunction.h"
#include "definitions.h"

class NetworkController {
    std::unique_ptr<Network> _net;
    std::unique_ptr<LossFunction> _lossFunction;
    Scalar _learningRate;
    bool _log;
public:
    NetworkController() = default;
    NetworkController(Network* net, LossFunction* lossFunction, Scalar learningRate = 0.005, bool log = true);

    void train(std::vector<RowVector>& X, std::vector<RowVector>& Y);
    void train(RowVector& x, RowVector& y);
    RowVector predict(const RowVector& x);

protected:
    void updateOutputError(const RowVector& y);
    void propagateForwardLayer(HiddenLayer* layer, const RowVector& previousOut, const Matrix& weights);
    void propagateForward(const RowVector& x);
    void propagateBackwardLayer(HiddenLayer* layer, const HiddenLayer& nextLayer, const Matrix& weights);
    void propagateBackward();
    void updateGivenWeights(Matrix* weights, const RowVector& previousOut, const HiddenLayer& nextLayer);
    void updateOutputWeights(Matrix* weights, const RowVector& previousOut, const HiddenLayer& nextLayer);
    void updateNetworkWeights();
};

#endif//AI_NETWORKCONTROLLER_H
