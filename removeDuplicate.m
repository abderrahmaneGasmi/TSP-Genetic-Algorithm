function old = removeDuplicate( old,char )
%this is a function that removes a duplicate from a path
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

