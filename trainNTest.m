function [ accurTrain, accurTest, perfTrain, perfTest ] = trainNTest( net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput )

    % Define and initialize output variables
    accurTrain = 0;
    accurTest = 0;
    perfTrain = 0;
    perfTest = 0;

    % We repeat the test 5 times and return the mean
    % value of each resulting value
    for i=1:5
        % Train neural network
        [net,~] = train(net, train_matrix, target_matrix);

        % Simulate neural network (train)
        yTrain = sim(net, train_matrix);
        
        % As a performance measure we use the Euclidean norm (train)
        perfTrain = perfTrain + mse(net, target_matrix, yTrain);
        
        % Initialize random number generator
        % 3879 + 3414 = 7293
        rand('seed', 7293);
        
        % Compute the accuracy of the trainning data set
        target_in_nums = trainOutput(randperm(size(trainOutput,1)),:);
        target_in_nums = target_in_nums';
        accurTrain = accurTrain + percent(yTrain, target_in_nums);

        % Simulate neural network (test)
        yTest = sim(net, test_matrix);
        
        % As a performance measure we use the Euclidean norm (test)
        perfTest = perfTest + mse(net, test_target_matrix, yTest);
        
        % Calculate test accuracy
        test_target_in_nums = testOutput(randperm(size(testOutput,1)),:);
        test_target_in_nums = test_target_in_nums';
        accurTest = accurTest + percent(yTest, test_target_in_nums);
    end
    
    % Divide by the number of repetitions
    perfTrain = perfTrain/5;
    perfTest = perfTest/5;
    accurTrain = accurTrain/5;
    accurTest = accurTest/5;
end

