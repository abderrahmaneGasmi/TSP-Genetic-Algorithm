function score = fitness( row,roadDistance )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

score = 0; idx1 = 0;idx2=0;
for i =1:length(row)-1
 firstLetter = row(i);
 seccondeLetter = row(i+1);
 if double(firstLetter)>double(seccondeLetter)
     
 idx1 = double(seccondeLetter)-64+1;
 idx2 = double(firstLetter)-64+1;
 else
 idx2 = double(seccondeLetter)-64+1;
 idx1 = double(firstLetter)-64+1;
 end
 %disp(['the first char is ',char(idx1+63),' the seconde char is ',char(idx2+63)])
  %disp([double(idx1),double(idx2)])
 %disp(roadDistance(idx1,idx2))
 score = score+roadDistance(idx1,idx2);
end

end

