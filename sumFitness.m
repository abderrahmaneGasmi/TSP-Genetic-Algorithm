function sum = sumFitness( population,roadDistance )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
sum = 0;
for i=1:4
    row = population(i,:);
  sum = sum + fitness(row,roadDistance);
end
end

