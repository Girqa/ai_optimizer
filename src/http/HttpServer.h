//
// Created by Ярослав on 16.01.2024.
//

#ifndef AI_HTTPSERVER_H
#define AI_HTTPSERVER_H

#include "cpprest/uri.h"
#include "cpprest/json.h"
#include "cpprest/http_listener.h"
#include "cpprest/http_msg.h"
#include <functional>
#include <unordered_map>


using server = web::http::experimental::listener::http_listener;
using server_config = web::http::experimental::listener::http_listener_config;
using request_handle = std::function<void(const web::http::http_request&)>;

class HttpServer {
    server listener;
    web::uri uri;

    struct Handle {
        web::http::method method;
        request_handle handle;

        Handle(web::http::method _method, request_handle _handle);
        void operator()(const web::http::http_request& request);
    };

    std::unordered_map<utility::string_t, Handle> handles;

public:
    HttpServer(web::uri address);
    void register_handle(const web::uri& related_uri, web::http::method method, request_handle handle);
    pplx::task<void> run();
    pplx::task<void> stop();

private:
    void default_handle(web::http::http_request request) const;
};

#endif//AI_HTTPSERVER_H
