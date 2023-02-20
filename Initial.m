function citiesSuffled = Initial( cities )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
citiesSuffled = [];
for i = 1:4
    city = cities(randperm(length(cities)));
    city = [city city(1)];
citiesSuffled = [citiesSuffled;city];
%citiesSuffled = [citiesSuffled newval];
end
end

