//
// Created by Ярослав on 14.01.2024.
//

#include "Network.h"

Network::Network(InputLayer* _input, std::vector<HiddenLayer*> _hiddens, OutputLayer* _output)
    : input(_input), output(_output), hiddenLayers(_hiddens) {

    weights.emplace_back(input->size, hiddenLayers.front()->size);
    weights.back().setRandom();
    weights.back().col(hiddenLayers.front()->size - 1).setZero();
    weights.back().coeffRef(input->size - 1, hiddenLayers.front()->size - 1) = 1.0;
    for (int i = 1; i < hiddenLayers.size(); ++i) {
        weights.emplace_back(hiddenLayers[i - 1]->size, hiddenLayers[i]->size);
        weights.back().setRandom();
        weights.back().col(hiddenLayers[i]->size - 1).setZero();
        weights.back().coeffRef(hiddenLayers[i - 1]->size - 1, hiddenLayers[i]->size - 1) = 1.0;
    }
    weights.emplace_back(hiddenLayers.back()->size, output->size);
    weights.back().setRandom();
}

Network::~Network() {
    for (auto h: hiddenLayers) {
        delete h;
    }
}
