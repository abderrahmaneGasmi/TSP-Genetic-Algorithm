function min = minFitness( population,roadDistance )
% this function finds the min fitness of the population
min = 10000000;
for i=1:4
    row = population(i,:);
    minLocal = fitness(row,roadDistance);
  if minLocal<min
      min = minLocal;
  end
end
end

