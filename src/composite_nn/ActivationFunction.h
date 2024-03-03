//
// Created by Ярослав on 14.01.2024.
//

#ifndef AI_ACTIVATIONFUNCTION_H
#define AI_ACTIVATIONFUNCTION_H

#include "definitions.h"

class ActivationFunction {
public:
    virtual double f(Scalar x) = 0;
    virtual double df(Scalar x) = 0;
};

class Sigmoid : public  ActivationFunction {
    double f(Scalar x) override;
    double df(Scalar x) override;
};

class Linear : public ActivationFunction {
    double f(Scalar x) override;
    double df(Scalar x) override;
};

class ReLu : public ActivationFunction {
public:
    double f(Scalar x) override;
    double df(Scalar x) override;
};

#endif//AI_ACTIVATIONFUNCTION_H
