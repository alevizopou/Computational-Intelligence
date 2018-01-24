% Read only output data from file and return the data in output matrix
trainOutput = dlmread('optdigits.tra', ',', 0, 64);
testOutput = dlmread('optdigits.tes', ',', 0, 64);

% Create array of all zeros
transformed_trainOutput = zeros(3823,10);
transformed_testOutput = zeros(1797,10);

% Create train output matrix
for k = 1:numel(trainOutput)
    v = trainOutput(k);
    transformed_trainOutput(k,10 - v) = 1;
end
     % Create test output matrix
for k = 1:numel(testOutput)
    v = testOutput(k);
    transformed_testOutput(k,10 - v) = 1;
end