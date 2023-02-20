function roadDistance = distanceMatrice(cities)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
roadDistance = zeros(length(cities)+1,length(cities)+1);
for i=2:length(cities)+1
    roadDistance(i,1) = char(cities(i-1));
    roadDistance(1,i) = char(cities(i-1));
end
for i=2:length(cities)+1
    for j=2:length(cities)+1 
        if j>i
    roadDistance(i,j) = randi([3 100],1) ;
        end
    end
end

end

