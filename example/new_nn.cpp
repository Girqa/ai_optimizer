#include <chrono>
#include <thread>
#include <algorithm>
#include <random>
#include "../src/composite_nn/NetworkController.h"

void calculateLoss(std::vector<RowVector>& XTest, std::vector<RowVector> YTest, NetworkController& controller) {
    Scalar loss = 0;
    for (int i = 0; i < XTest.size(); ++i) {
        Scalar pred = controller.predict(XTest[i])[0];
        loss += (YTest[i][0] - pred) * (YTest[i][0] - pred);
    }
    std::cout << "Loss = " << loss / XTest.size() << std::endl;
}

void testCompositeNN() {

    NetworkController controller (
            new Network (
                    new InputLayer(1),
                    std::vector<HiddenLayer*> {
                            new HiddenLayer(3, new Sigmoid())
                    },
                    new OutputLayer(1, new Sigmoid())),
            new BCE(),
            0.005,
            false
    );

    std::srand(42);
    std::vector<RowVector> X;
    std::vector<RowVector> Y;

    Scalar max_x = 300;
    for (Scalar x = 0; x < max_x; ++x) {
        X.emplace_back(1);
        X.back()[0] = x;
    }
    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(X.begin(), X.end(), g);

    for (RowVector x: X) {
        Y.emplace_back(1);
        Y.back()[0] = x[0] > max_x / 2 ? 1 : 0;
    }

    std::vector<RowVector> XTrain(X.begin(), X.end() - max_x * 0.2);
    std::vector<RowVector> YTrain(Y.begin(), Y.end() - max_x * 0.2);
    std::vector<RowVector> XTest(X.begin() + max_x * 0.8, X.end());
    std::vector<RowVector> YTest(Y.begin() + max_x * 0.8, Y.end());


    for (int i = 0; i < 15; ++i) {
        controller.train(XTrain, YTrain);
        calculateLoss(XTest, YTest, controller);
    }
}