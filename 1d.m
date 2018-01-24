newTrain = horzcat(Normalized_trainInput, transformed_trainOutput);
newTest = horzcat(Normalized_testInput, transformed_testOutput);

rand('seed', 7293);

shuffled_newTrain = newTrain(randperm(size(newTrain,1)),:);
shuffled_newTest = newTest(randperm(size(newTest,1)),:);
train_matrix = shuffled_newTrain(:,1:64);
target_matrix = shuffled_newTrain(:,65:74);
test_matrix = shuffled_newTest(:,1:64);
test_target_matrix = shuffled_newTest(:,65:74);

train_matrix = train_matrix';
target_matrix = target_matrix';
test_matrix = test_matrix';
test_target_matrix = test_target_matrix';
