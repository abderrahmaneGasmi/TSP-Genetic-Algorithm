function mutated = mutation( population,rate )
% we mutate the paths by swapping 2 cities in the path with a probability
rate = rate*1000;
mutated = population;
for i=1:4
    for j=2:9
        prob = randi(1000);
        if(prob<=rate)
            temp = mutated(i,j);
            mutated(i,j) = mutated(i,j+1);
            mutated(i,j+1) = temp;
        end
    end
end
