function accuracy = percent ( A, inNums )

counter = 0;
a = 0;

[maxVal maxInd] = max(A)

for a = 1:numel(maxInd)
    v = maxInd(a);
    maxVal(a) = 10 - v;
end

% sygkrisi dianysmatos epi8ymhths exodou me pragmatikh exodo
for i = 1:numel(inNums)
    if( inNums(i) == maxVal(i) )
        counter = counter + 1;
    end
end

accuracy = (counter / a);
end
