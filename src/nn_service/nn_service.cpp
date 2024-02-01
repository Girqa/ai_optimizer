//
// Created by Ярослав on 17.01.2024.
//

#include "nn_service.h"

// TODO: WARN: Check, whether u have memory leak!!!

LayerParamsDto::LayerParamsDto(const web::json::object& obj) {
    size = obj.at(U("size")).as_integer();
    if (obj.find(U("activation")) != obj.end()) {
        activation = utility::conversions::to_utf8string(obj.at(U("activation")).as_string());
    }
}

NetParamsDto::NetParamsDto(const web::json::object& data) {
    learningRate = data.at(U("learningRate")).as_double();
    lossFunction = utility::conversions::to_utf8string(data.at(U("lossFunction")).as_string());

    auto layersData = data.at(U("layers")).as_object();
    for (const auto& layer: layersData) {
        std::string key = utility::conversions::to_utf8string(layer.first);
        LayerParamsDto layerDto = layer.second.as_object();
        layers.insert(std::make_pair(key, layerDto));
    }
}

BrkIndividualDto::BrkIndividualDto(const web::json::object& data) {
    fitness = data.at(U("fitness")).as_double();
    for (const auto& pos: data.at(U("positions")).as_object()) {
        breakerPositions.emplace_back(pos.second.as_integer());
    }
}

NNService::NNService(web::uri addr): server(addr) {
    server.register_handle(
            web::uri(L"/init"),
            web::http::methods::POST,
            std::bind(&NNService::handle_create_nn, this, std::placeholders::_1)
            );

    server.register_handle(
            web::uri(L"/mutate"),
            web::http::methods::POST,
            std::bind(&NNService::handle_individual, this, std::placeholders::_1)
            );
}

void NNService::run_nn_service() {
    server.run();
}

void NNService::handle_create_nn(const web::http::http_request& req) {
    req.extract_json()
            .then([&req, this](web::json::value data){

                try {
                    NetParamsDto paramsDto = data.as_object();
                    this->create_nn(paramsDto);

                    return req.reply(web::http::status_codes::OK);
                } catch (std::exception& e) {
                    std::string msg("Parsing NetParamsDto: ");
                    msg += e.what();
                    std::cout << msg.data() << std::endl;
                    return req.reply(web::http::status_codes::BadRequest, msg);
                }

            })
            .wait();
}

ActivationFunction* toActivationFunction(const std::string& func) {
    if (func == "ReLu") return new ReLu();
    if (func == "Sigmoid") return new Sigmoid();
    if (func == "Linear") return new Linear();

    std::string msg("Can't find appropriate activation function for");
    msg += func;
    throw std::exception((msg + func).data());
}

LossFunction* toLossFunction(const std::string& func) {
    if (func == "MSE") return new MSE();
    if (func == "RMSE") return new RMSE();
    if (func == "BCE") return new BCE();

    std::string msg("Can't find appropriate loss function for");
    msg += func;
    throw std::exception((msg + func).data());
}

void NNService::create_nn(const NetParamsDto& params) try {
    if (params.layers.size() < 3) throw std::exception("NN must have at least 3 layers: input, hidden, output");
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
                    outputLayer
                    ),
            toLossFunction(params.lossFunction),
            params.learningRate
            );

} catch (std::exception& e) {
    // TODO include fmt
    std::string msg;
    msg += "Can't instantiate network. Reason: ";
    msg += e.what();
    throw std::exception(msg.data());
}

void NNService::handle_individual(const web::http::http_request& req) {
    req.extract_json()
            .then([&req, this](web::json::value data) {
                try {
                    auto individual = BrkIndividualDto(data.as_object());

                } catch (std::exception& e) {

                }
            });
}

Scalar NNService::calculate_fit() {
    return 0;
}

NNService::MutatorLossFunction::MutatorLossFunction(std::function<Scalar(std::vector<int>)> _remoteFitter): remoteFitter(_remoteFitter) {}

Scalar NNService::MutatorLossFunction::loss(const Network& net, const RowVector& actual) {

    return 0;
}
RowVector NNService::MutatorLossFunction::dLoss(const Network& net, const RowVector& actual) {
    return RowVector();
}
