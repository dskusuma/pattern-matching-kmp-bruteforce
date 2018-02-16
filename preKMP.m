function [ kmpNext ] = preKMP( P ,n)
% PREKMP Summary of this function goes here
% INPUT     P : array[1..n] of char; 
%           n: integer -> size dari P;
% OUTPUT    kmpNext : array[1..n] of integer

i = 1;
j = 0;
kmpNext(1) = 0;

while(i < n)
    while (j > 0 && ~(P(i) == P(j)))
        j = kmpNext(j);
    end
    
    i = i+1;
    j = j+1;
    
    if (P(i) == P(j))
        kmpNext(i) = kmpNext(j);
    else
        kmpNext(i) = j;
    end
end %endwhile

end

