//
// Created by Ярослав on 14.01.2024.
//

#include "Layer.h"

Layer::Layer(uint _size): size(_size + 1), output(_size  +1) {}

InputLayer::InputLayer(uint _size) : Layer(_size) {}

HiddenLayer::HiddenLayer(uint _size, ActivationFunction* _activation)
: Layer(_size), errors(_size  + 1), inputsAccumulation(_size + 1), activation(_activation) {
    output.coeffRef(_size) = 1.0;
}

OutputLayer::OutputLayer(uint _size, ActivationFunction* _activation): HiddenLayer(_size - 1, _activation) {}
