#ifndef SERIALIZATION_H
#define SERIALIZATION_H

#include "nlohmann.h"
#include "spdlog.h"

template<typename T>
std::string toJson(T& value) {
    nlohmann::json j = value;
    return j.dump();
}

template<typename T>
void fromJson(const std::string& s, T& value) {
    if (s.empty()) {
        spdlog::error("can not parse empty data");
    }

    try {
        nlohmann::json j = nlohmann::json::parse(s);
        nlohmann::from_json(j, value);
    }
    catch (const std::exception& ex) {
        spdlog::error("error parsing json: {}", ex.what());
    }
}

template<typename T>
T fromJson(const std::string& s) {
    T value;
    fromJson(s, value);
    return value;
}

#endif//SERIALIZATION_H