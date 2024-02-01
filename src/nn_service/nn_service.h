//
// Created by Ярослав on 17.01.2024.
//

#ifndef AI_NN_SERVICE_H
#define AI_NN_SERVICE_H

#include "../http/HttpServer.h"
#include "../composite_nn/NetworkController.h"

struct LayerParamsDto {
    uint size;
    std::string activation;

    LayerParamsDto(const web::json::object& obj);
};

struct NetParamsDto {
    std::map<std::string, LayerParamsDto> layers;
    Scalar learningRate;
    std::string lossFunction;
    NetParamsDto(const web::json::object& data);
};

struct BrkIndividualDto {
    std::vector<Scalar> breakerPositions;
    Scalar fitness;
    BrkIndividualDto(const web::json::object& data);
};

class NNService {
    HttpServer server;
    NetworkController net_controller;

public:
    NNService(web::uri addr);

    void run_nn_service();

protected:
    void handle_create_nn(const web::http::http_request& req);

    void create_nn(const NetParamsDto& layers);

    void handle_individual(const web::http::http_request& req);

    Scalar calculate_fit();

    class MutatorLossFunction: LossFunction {
        std::function<Scalar(std::vector<int>)> remoteFitter;
    public:
        MutatorLossFunction(std::function<Scalar(std::vector<int>)> _remoteFitter);
        Scalar loss(const Network& net, const RowVector& actual) override;
        RowVector dLoss(const Network& net, const RowVector& actual) override;
    };
};



#endif//AI_NN_SERVICE_H
