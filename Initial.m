function citiesSuffled = Initial( cities )

citiesSuffled = [];
% we create 4 random paths
for i = 1:4
    city = cities(randperm(length(cities)));
    city = [city city(1)];
citiesSuffled = [citiesSuffled;city];
%citiesSuffled = [citiesSuffled newval];
end
end

