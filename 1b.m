trainInput = dlmread('optdigits.tra', ',', [0,0,3822,63]);
testInput = dlmread('optdigits.tes', ',', [0,0,1796,63]);

Normalized_trainInput = mapminmax(trainInput);
Normalized_testInput = mapminmax(testInput);