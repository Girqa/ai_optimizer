//
// Created by Ярослав on 14.01.2024.
//

#ifndef AI_LOSSFUNCTION_H
#define AI_LOSSFUNCTION_H

#include "definitions.h"
#include "Network.h"

class LossFunction {
public:
    virtual Scalar loss(const Network& net, const RowVector& actual) = 0;
    virtual RowVector dLoss(const Network& net, const RowVector& actual) = 0;
};

class MSE : public LossFunction {
    Scalar loss(const Network& net, const RowVector& actual) override;
    RowVector dLoss(const Network& net, const RowVector& actual) override;
};

class RMSE : public LossFunction {
    Scalar loss(const Network& net, const RowVector& actual) override;
    RowVector dLoss(const Network& net, const RowVector& actual) override;
};

class BCE : public LossFunction {
    Scalar loss(const Network& net, const RowVector& actual) override;
    RowVector dLoss(const Network& net, const RowVector& actual) override;
};

#endif//AI_LOSSFUNCTION_H
