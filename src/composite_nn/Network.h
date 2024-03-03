//
// Created by Ярослав on 14.01.2024.
//

#ifndef AI_NETWORK_H
#define AI_NETWORK_H

#include "Layer.h"
#include "vector"

class Network {
public:
    std::unique_ptr<InputLayer> input;
    std::vector<HiddenLayer*> hiddenLayers;
    std::unique_ptr<OutputLayer> output;
    std::vector<Matrix> weights;

    Network(InputLayer* input, std::vector<HiddenLayer*> hiddens, OutputLayer* output);
    ~Network();
};

#endif//AI_NETWORK_H
