#include "nn_service/nn_service.h"

int main() {
    NNService service("http://127.0.0.1:8081");
    service.run_nn_service("127.0.0.1", 9090);
    while (true)
    {
        /* code */
    }
    
    return 0;
}
