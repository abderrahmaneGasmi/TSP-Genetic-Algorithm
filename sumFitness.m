function sum = sumFitness( population,roadDistance )
%we calculate the sum of the fitness of all the paths
sum = 0;
for i=1:4
    row = population(i,:);
  sum = sum + fitness(row,roadDistance);
end
end

