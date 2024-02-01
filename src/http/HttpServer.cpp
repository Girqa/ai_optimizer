//
// Created by Ярослав on 16.01.2024.
//

#include "HttpServer.h"

HttpServer::Handle::Handle(web::http::method _method, request_handle _handle): method(_method), handle(_handle) {}

void HttpServer::Handle::operator()(const web::http::http_request& request) {
    handle(request);
}

HttpServer::HttpServer(web::uri address): listener(address), uri(address) {
    listener.support(std::bind(&HttpServer::default_handle, this, std::placeholders::_1));
}

void HttpServer::register_handle(const web::uri& related_uri, web::http::method method, request_handle handle) {
    handles.insert(std::make_pair(related_uri.to_string(), Handle(method, handle)));
}

pplx::task<void> HttpServer::run() {
    return listener.open().then([this]() {
        std::wcout << "Listening on " << uri.to_string() << std::endl;
    });
}

pplx::task<void> HttpServer::stop() {
    return listener.close();
}

void HttpServer::default_handle(web::http::http_request request) const {
    if (handles.find(request.relative_uri().to_string()) != handles.end()) {
        Handle handle = handles.at(request.relative_uri().to_string());
        if (handle.method == request.method()) {
            handle(request);
            return ;
        };
    }
    std::wcout << "Method " << request.method().data() << " is not provided for " << request.relative_uri().to_string() << std::endl;
}
