//
// Created by Ярослав on 05.01.2024.
//

#ifndef AI_NEURALNETWORK_H
#define AI_NEURALNETWORK_H

// NeuralNetwork.hpp
#include "eigen/Eigen/Eigen"
#include <iostream>
#include <vector>
#include <functional>

// use typedefs for future ease for changing data types like : float to double
typedef double Scalar;
typedef Eigen::MatrixXd Matrix;
typedef Eigen::RowVectorXd RowVector;
typedef Eigen::VectorXd ColVector;
typedef std::uint32_t uint;

// neural network implementation class
class NeuralNetwork {
public:
    // constructor
    explicit NeuralNetwork(std::vector<uint> topology, Scalar learningRate = Scalar(0.005));

    // function for forward propagation of data
    void propagateForward(const RowVector& input);

    // function for backward propagation of errors made by neurons
    void propagateBackward(const RowVector& output);

    // function to calculate errors made by neurons in each layer
    void calculateErrors(const RowVector& output);

    // function to update the weights of connections
    void updateWeights();

    // function to train the neural network give an array of data points
    void train(std::vector<RowVector>& input_data, std::vector<RowVector>& output_data);

    RowVector predict(const RowVector& object);

    static Scalar activationFunction(Scalar x);

    static Scalar activationFunctionDerivative(Scalar x);

private:
    // storage objects for working of neural network
    /*
          use pointers when using std::vector<Class> as std::vector<Class> calls destructor of
          Class as soon as it is pushed back! when we use pointers it can't do that, besides
          it also makes our neural network class less heavy!! It would be nice if you can use
          smart pointers instead of usual ones like this
        */
    std::vector<uint> topology;
    std::vector<RowVector> neuronLayers; // stores the different layers of out network
    std::vector<RowVector> cacheLayers; // stores the unactivated (activation fn not yet applied) values of layers
    std::vector<RowVector> layersErrors; // stores the error contribution of each neurons
    std::vector<Matrix> weights; // the connection weights itself
    Scalar learningRate;
};

#endif//AI_NEURALNETWORK_H
