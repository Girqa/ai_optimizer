//
// Created by Ярослав on 14.01.2024.
//

#ifndef AI_LAYER_H
#define AI_LAYER_H

#include "definitions.h"
#include "ActivationFunction.h"
#include "Weights.h"
#include "memory"

class Layer {
public:
    Layer(uint size);

    RowVector output;
    uint size;
};

class InputLayer : public Layer {
public:
    InputLayer(uint _size);
};

class HiddenLayer : public Layer {
protected:
public:
    RowVector errors;
    RowVector inputsAccumulation;
    std::unique_ptr<ActivationFunction> activation;

    HiddenLayer(uint size, ActivationFunction* func);
    HiddenLayer(const HiddenLayer& other) = delete;
    const HiddenLayer& operator=(const HiddenLayer& other) = delete;
};

class OutputLayer : public HiddenLayer {
public:
    OutputLayer(uint _size, ActivationFunction* _activation);
};

#endif//AI_LAYER_H
