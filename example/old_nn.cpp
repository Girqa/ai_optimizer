#include <iostream>
#include "../src/nn/NeuralNetwork.h"

void example_nn() {
   std::vector<uint> topology{1, 2, 1};
   NeuralNetwork model(topology, 0.0001);

   std::srand(42);
   std::vector<RowVector> X;
   std::vector<RowVector> Y;

   Scalar max_x = 100;
   for (Scalar x = 0; x < max_x; ++x) {
       X.emplace_back(1);
       X.back()[0] = x;
   }

//    std::random_device rd;
//    std::mt19937 g(rd());
//    std::shuffle(X.begin(), X.end(), g);

   for (RowVector x: X) {
       Y.emplace_back(1);
       Y.back()[0] = x[0];
   }

   model.train(X, Y);
   std::cout << '\n';
   std::cout << "On value: " << X[5] << " predicted: " << model.predict(X[5]) << std::endl;
   std::cout << "Should: " << Y[5];
}