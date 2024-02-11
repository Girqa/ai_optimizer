//
// Created by Ярослав on 14.01.2024.
//

#include "LossFunction.h"

Scalar MSE::loss(const Network& net, const RowVector& actual) {
    return (actual - net.output->output).array().square().sum();
}
RowVector MSE::dLoss(const Network& net, const RowVector& actual) {
    return actual - net.output->output;
}

Scalar RMSE::loss(const Network& net, const RowVector& actual) {
    return std::pow(
            (actual - net.output->output).array().sqrt().sum(),
            0.5
    );
}

RowVector RMSE::dLoss(const Network& net, const RowVector& actual) {
    return 2 * (actual - net.output->output);
}

double log_f(double val) {
        return log(val);
}

Scalar BCE::loss(const Network& net, const RowVector& actual) {
    RowVector ones(actual.size());
    ones.setOnes();
    return -1 * (actual * net.output->output.unaryExpr([](double v){ return log_f(v); })
                    + (net.output->output * -1 + ones).unaryExpr([](double v){ return log_f(v); }) * (actual * -1 + ones)
             ).sum();
}
RowVector BCE::dLoss(const Network& net, const RowVector& actual) {
    RowVector res(actual.size());
    for (int i = 0; i < actual.size(); ++i) {
        res[i] = actual[i] / net.output->output[i] - (1 - actual[i]) / (1 - net.output->output[i] + 1e-6);
    }
    return res;
}
