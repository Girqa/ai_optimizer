//
// Created by Ярослав on 17.01.2024.
//

#ifndef AI_NN_SERVICE_H
#define AI_NN_SERVICE_H

#include "httplib.h"
#include "spdlog.h"
#include "../composite_nn/NetworkController.h"
#include "../dto/dtos.h"

class NNService {
    httplib::Server server;
    httplib::Client client;
    NetworkController net_controller;

public:
    NNService() = delete;

    NNService(const std::string& calculatorAddr);

    void run_nn_service(const std::string& host, int port);

protected:
    void handle_create_nn(const httplib::Request& req, httplib::Response &res);

    void create_nn(const NetParamsDto& layers);

    void handle_individual(const httplib::Request& req, httplib::Response &res);

    Scalar calculate_fit(const RowVector& individual);

    class MutatorLossFunction: public LossFunction {
        std::function<Scalar(const RowVector&)> remoteFitter;
    public:
        MutatorLossFunction(std::function<Scalar(const RowVector&)> _remoteFitter);
        Scalar loss(const Network& net, const RowVector& actual) override;
        RowVector dLoss(const Network& net, const RowVector& actual) override;
    };
};

#endif//AI_NN_SERVICE_H
