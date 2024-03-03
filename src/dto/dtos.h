//
// Created by Ярослав on 13.02.2024.
//

#ifndef AI_DTOS_H
#define AI_DTOS_H

#include "nlohmann.h"
#include "../composite_nn/definitions.h"

struct LayerParamsDto {
    uint size;
    std::string activation;

    NLOHMANN_DEFINE_TYPE_INTRUSIVE(LayerParamsDto, size, activation)
};

struct NetParamsDto {
    std::map<std::string, LayerParamsDto> layers;
    Scalar learningRate;
    std::string lossFunction;
    
    NLOHMANN_DEFINE_TYPE_INTRUSIVE(NetParamsDto, layers, learningRate, lossFunction)
};

struct BrkIndividualDto {
    std::vector<Scalar> breakerPositions;
    Scalar fitness;
    
    NLOHMANN_DEFINE_TYPE_INTRUSIVE(BrkIndividualDto, breakerPositions, fitness)
};

#endif//AI_DTOS_H
