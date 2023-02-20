function crossed = crossOver( population )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
old1 = population(1,:);
old2 = population(2,:);
old3 = population(3,:);
old4 = population(4,:);
x1 = randi([2,6]);
%disp(x1);
x11 = x1+2;
removedserie1 = [];
removedserie2 = [];
removedserie3 = [];
removedserie4 = [];
for i=x1:x11
removedserie1 = [removedserie1 old1(i)];

%old1(x1) = [];
removedserie2 = [removedserie2 old2(i)];
%old2(x1) = [];
removedserie3 = [removedserie3 old3(i)];
%old3(x1) = [];
removedserie4 = [removedserie4 old4(i)];
%old4(x1) = [];
end

for i=1:3
old1 = removeDuplicate(old1,removedserie2(i));
old2 = removeDuplicate(old2,removedserie1(i));
old3 = removeDuplicate(old3,removedserie4(i));
old4 = removeDuplicate(old4,removedserie3(i));
end
crossed = [];
%disp(['removedserie1 ',removedserie1]);
%disp(['removedserie2 ',removedserie2]);
%disp(['removedserie3 ',removedserie3]);
%disp(['removedserie4 ',removedserie4]);
%disp(['old 1 ',old1]);
%disp(['old 2 ',old2]);
%disp(['old 3 ',old3]);
%disp(['old 4 ',old4]);
new1 = [old1(1:x1-1) removedserie2(1:end) old1(x1:end)];
new2 = [old2(1:x1-1) removedserie1(1:end) old2(x1:end)];
new3 = [old3(1:x1-1) removedserie4(1:end) old3(x1:end)];
new4 = [old4(1:x1-1) removedserie3(1:end) old4(x1:end)];

if(length(new1)<11)
    new1(11) = new1(1);
end
if(length(new2)<11)
    new2(11) = new2(1);
end
if(length(new3)<11)
    new3(11) = new3(1);
end
if(length(new4)<11)
    new4(11) = new4(1);
end
%disp(['new 1 ',new1]);
%disp(['new 2 ',new2]);
%disp(['new 3 ',new3]);
%disp(['new 4 ',new4]);
crossed = [crossed;new1];
crossed = [crossed;new2];
crossed = [crossed;new3];
crossed = [crossed;new4];
end
