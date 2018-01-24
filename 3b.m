% Create a feed-forward backpropagation network
net = newff(minmax(train_matrix),[74,10],{'logsig','logsig'},'traingdm');

net = init(net);

% We set the maximum training epoch
% the maximum number of failed validation checks
% and the minimum gradient
net.trainParam.epochs = 100;
net.trainParam.max_fail = 10;
net.trainParam.min_grad = 1e-10;

% learning rate = 0.01
% momentume     = 0.1
net.trainParam.lr = 0.1;
net.trainParam.mc = 0.1;
[results3b(6, 1), results3b(6, 2), results3b(6, 3), results3b(6, 4)] = trainNTest(net, train_matrix, test_matrix, target_matrix, test_target_matrix, trainOutput, testOutput);