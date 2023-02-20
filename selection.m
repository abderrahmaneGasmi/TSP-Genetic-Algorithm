function selected = selection( population,roadDistance )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

prob = [];
fitnessFinal = sumFitness(population,roadDistance);
for i=1:4
  V = population(i,:);  
  prob(i) =round(fitness(V,roadDistance)/fitnessFinal *10);
end

extended = [];
for i=1:length(prob)
    
    if prob(i) ~=0
    for j = 1:prob(i)
    extended = [extended;population(i,:)];
    end
    end
end
selected = [];

for i=1:4
randIdx = randi(9);
selected = [selected;extended(randIdx,:)];
end

end

