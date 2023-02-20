function selected = selection( population,roadDistance )


prob = [];
fitnessFinal = sumFitness(population,roadDistance);
%we calculate the probability of each path to be selected and store it
for i=1:4
  V = population(i,:);  
  prob(i) =round(fitness(V,roadDistance)/fitnessFinal *10);
end

% we create an extended each path is repeated as many times as its probability
extended = [];
for i=1:length(prob)
    
    if prob(i) ~=0
    for j = 1:prob(i)
    extended = [extended;population(i,:)];
    end
    end
end
selected = [];

% we select 4 random paths from the extended the higher probability will be selected
for i=1:4
randIdx = randi(9);
selected = [selected;extended(randIdx,:)];
end

end

