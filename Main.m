cities = ['A','B','C','D','E','F','G','H','I','J'];
best = Initial(cities);

roadDistance = distanceMatrice(cities);
disp(roadDistance);
min = minFitness(best,roadDistance);
disp(best);
disp(min);
for i=1:50
 %   disp(i);
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