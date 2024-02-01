//
// Created by Ярослав on 14.01.2024.
//

#include "ActivationFunction.h"

double Sigmoid::f(Scalar x) {
    return 1 / (1 + exp(-1 * x));
}

double Sigmoid::df(Scalar x) {
    return this->f(x) * (1 - this->f(x));
}

double Linear::f(Scalar x) {
    return x;
}

double Linear::df(Scalar x) {
    return 1;
}

double ReLu::f(Scalar x) {
    return x < 0 ? 0 : x;
}

double ReLu::df(Scalar x) {
    return x < 0 ? 0 : 1;
}
