#include "nn_service/nn_service.h"

int
main(int amount, const char** args) {
    const char* serverHost;
    const char* clientHost;
    if (amount < 3) {
        serverHost = "127.0.0.1";
        clientHost = "http://127.0.0.1:8081";
    }
    else if (amount > 3) {std::exit(-1); }
    else {
        serverHost = args[1];
        clientHost = args[2];
    }

    NNService service(clientHost);
    service.run_nn_service(serverHost, 9090);

    return 0;
}
