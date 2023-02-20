function old = removeDuplicate( old,char )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
i=1;
while 1==1
if old(i)==char
        old(i)=[];
   
else
    i = i+1;
end
k = length(old);
if(i>k)
    break;
end
end

end

