function min = minFitness( population,roadDistance )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
min = 10000000;
for i=1:4
    row = population(i,:);
    minLocal = fitness(row,roadDistance);
  if minLocal<min
      min = minLocal;
  end
end
end

