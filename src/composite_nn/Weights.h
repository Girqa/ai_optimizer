//
// Created by Ярослав on 14.01.2024.
//

#ifndef AI_WEIGHTS_H
#define AI_WEIGHTS_H

#include "definitions.h"
#include "Layer.h"

class Weights {
public:
    Matrix w;

    Weights(uint rows, uint columns);
};

#endif//AI_WEIGHTS_H
