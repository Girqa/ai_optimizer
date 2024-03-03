//
// Created by Ярослав on 17.01.2024.
//

#include <utility>

#include "../utils/serialization.h"
#include "nn_service.h"
#include "spdlog.h"

// TODO: WARN: Check, whether u have memory leak!!!

NNService::NNService(const std::string& calculatorAddr)
    : client(calculatorAddr) {
    server.Post("/init", [this](const httplib::Request& req, httplib::Response& res) {
        this->handle_create_nn(req, res);
    });

    server.Post("/mutate", [this](const httplib::Request& req, httplib::Response& res) {
        this->NNService::handle_individual(req, res);
    });
}

void
NNService::run_nn_service(const std::string& host, int port) {
    spdlog::info(fmt::format("Run nn service on {}:{}", host, port));
    server.listen(host, port);
}

void
NNService::handle_create_nn(const httplib::Request& req, httplib::Response& res) {
    try {
        NetParamsDto paramsDto = fromJson<NetParamsDto>(req.body);
        this->create_nn(paramsDto);

        res.status = httplib::StatusCode::OK_200;
    }
    catch (std::exception& e) {
        std::string msg = fmt::format("Error parsing NetParamsDto: {}", e.what());
        spdlog::error(msg);
        res.status = httplib::StatusCode::BadRequest_400;
        res.set_content(msg, "text/html");
    }
}

ActivationFunction*
toActivationFunction(const std::string& func) {
    if (func == "ReLu") return new ReLu();
    if (func == "Sigmoid") return new Sigmoid();
    if (func == "Linear") return new Linear();

    throw std::runtime_error(fmt::format("Can't find appropriate activation function for {}", func).c_str());
}

LossFunction*
toLossFunction(const std::string& func) {
    if (func == "MSE") return new MSE();
    if (func == "RMSE") return new RMSE();
    if (func == "BCE") return new BCE();

    throw std::runtime_error(fmt::format("Can't find appropriate loss function for {}", func).c_str());
}

void
NNService::create_nn(const NetParamsDto& params) try {
    if (params.layers.size() < 3) throw std::runtime_error("NN must have at least 3 layers: input, hidden, output");
    auto layer = params.layers.begin();
    auto inputLayer = new InputLayer((*layer).second.size);
    ++layer;

    auto predLast = --params.layers.end();
    std::vector<HiddenLayer*> hLayers;
    for (; layer != predLast; ++layer) {
        const LayerParamsDto& layerParams = (*layer).second;
        hLayers.push_back(new HiddenLayer(layerParams.size, toActivationFunction(layerParams.activation)));
    }

    const LayerParamsDto& layerParams = (*layer).second;
    auto outputLayer = new OutputLayer(layerParams.size, toActivationFunction(layerParams.activation));

    net_controller = NetworkController(
            new Network(
                    inputLayer,
                    hLayers,
                    outputLayer),
            new NNService::MutatorLossFunction(std::bind(&NNService::calculate_fit, this, std::placeholders::_1)),
            params.learningRate);
}
catch (const std::exception& e) {
    throw std::runtime_error(fmt::format("Can't instantiate network. Reason: {}", e.what()).data());
}

RowVector
getPositions(const BrkIndividualDto& individual) {
    RowVector positions(individual.breakerPositions.size());
    for (int i = 0; i < individual.breakerPositions.size(); ++i) {
        positions[i] = individual.breakerPositions[i];
    }
    return positions;
}

BrkIndividualDto
getBrkIndividualDto(const RowVector& positions, Scalar fitness) {
    BrkIndividualDto dto;
    dto.fitness = fitness;

    for (int i = 0; i < positions.size(); ++i) {
        dto.breakerPositions.push_back(positions[i]);
    }

    return dto;
}

void
NNService::handle_individual(const httplib::Request& req, httplib::Response& res) {
    try {
        BrkIndividualDto individual = fromJson<BrkIndividualDto>(req.body);
        RowVector positions = getPositions(individual);

        RowVector fitness(1);
        fitness[0] = individual.fitness;
        net_controller.train(positions, fitness);

        RowVector mutatedIndividualPositions = net_controller.predict(positions);
        Scalar mutatedFitness = calculate_fit(mutatedIndividualPositions);
        BrkIndividualDto mutatedIndDto = getBrkIndividualDto(mutatedIndividualPositions, mutatedFitness);

        res.status = httplib::StatusCode::OK_200;
        res.set_content(toJson(mutatedIndDto), "application/json");
    }
    catch (std::exception& e) {
        throw std::runtime_error(fmt::format("Can't mutate individual. Reason: {}", e.what()).data());
    }
}

Scalar
NNService::calculate_fit(const RowVector& individual) {
    nlohmann::json body;
    for (int i = 0; i < individual.size(); ++i) {
        body["individual"][i] = individual[i];
    }
    
    httplib::Result res = client.Post("/calculate", body.dump(), "application/json");
    nlohmann::json resp(res->body);

    return std::stod(resp["fitness"].dump());
}

NNService::MutatorLossFunction::MutatorLossFunction(std::function<Scalar(const RowVector&)> _remoteFitter) : remoteFitter(std::move(_remoteFitter)) {}

Scalar
NNService::MutatorLossFunction::loss(const Network& net, const RowVector& actual) {
    Scalar beforeMutationFit = actual[0];
    Scalar afterMutationFit = remoteFitter(net.output->output);
    return (beforeMutationFit - afterMutationFit) / beforeMutationFit;
}
RowVector
NNService::MutatorLossFunction::dLoss(const Network& net, const RowVector& actual) {
    return (net.input->output - net.output->output) * loss(net, actual);
}
