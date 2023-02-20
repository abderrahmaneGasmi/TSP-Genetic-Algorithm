cities = ['A','B','C','D','E','F','G','H','I','J'];

%create a random path for the first generation each letter is a city
best = Initial(cities);
% calculate the distance of the path by creating a half distance matrix
roadDistance = distanceMatrice(cities);
disp(roadDistance);
% calculate the fitness of the path and find the best path or the min cost
min = minFitness(best,roadDistance);
disp(best);
disp(min);

% iterate 50 times
for i=1:50

selected = selection(best,roadDistance);
lpo = crossOver(selected);
mutated = mutation(lpo,0.001);
minLocal = minFitness(mutated,roadDistance);
 if minLocal<min
      min = minLocal;
      best = mutated;
  end
end

disp('/n');
disp(best);
disp(min);