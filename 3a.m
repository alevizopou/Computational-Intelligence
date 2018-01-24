% Create a feed-forward backpropagation network
net = newff(minmax(train_matrix),[37,10],{'logsig','logsig'},'traingdm');

net = init(net);

% We set the maximum training epoch
% the maximum number of failed validation checks
% and the minimum gradient
net.trainParam.epochs = 100;
net.trainParam.max_fail = 10;
net.trainParam.min_grad = 1e-10;

% learning rate = 0.01
% momentume     = 0.9
net.trainParam.lr = 0.01;
net.trainParam.mc = 0.9;
[results3a(1, 1), results3a(1, 2), results3a(1, 3), results3a(1, 4)] = trainNTest(net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput);

% learning rate = 0.01
% momentume     = 0.6
net.trainParam.lr = 0.01;
net.trainParam.mc = 0.6;
[results3a(2, 1), results3a(2, 2), results3a(2, 3), results3a(2, 4)] = trainNTest(net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput);

% learning rate = 0.01
% momentume     = 0.1
net.trainParam.lr = 0.01;
net.trainParam.mc = 0.1;
[results3a(3, 1), results3a(3, 2), results3a(3, 3), results3a(3, 4)] = trainNTest(net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput);

% learning rate = 0.1
% momentume     = 0.9
net.trainParam.lr = 0.1;
net.trainParam.mc = 0.9;
[results3a(4, 1), results3a(4, 2), results3a(4, 3), results3a(4, 4)] = trainNTest(net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput);

% learning rate = 0.1
% momentume     = 0.6
net.trainParam.lr = 0.1;
net.trainParam.mc = 0.6;
[results3a(5, 1), results3a(5, 2), results3a(5, 3), results3a(5, 4)] = trainNTest(net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput);

% learning rate = 0.1
% momentume     = 0.1
net.trainParam.lr = 0.1;
net.trainParam.mc = 0.1;
[results3a(6, 1), results3a(6, 2), results3a(6, 3), results3a(6, 4)] = trainNTest(net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput);