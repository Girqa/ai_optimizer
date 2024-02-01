#include "http/HttpServer.h"
#include "nn_service/nn_service.h"

int main() {
    NNService service(L"http://127.0.0.1:8080");
    service.run_nn_service();
    while (true){};
    return 0;
}
