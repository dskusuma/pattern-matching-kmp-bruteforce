function [ ketemu ] = KMPSearch( m , n, P, T )
%KMPSEARCH Summary of this function goes here
% INPUT         m,n : integer ; -> size dari 
%               P   : array[1..n] of char;
%               T   : array[1..m] of char
% OUTPUT        sol : array[1..m] of boolean

kmpNext = preKMP(P,n);
i = 1;

while (i <= m-n)
    j = 1; %coba ganti dengan 1 nanti
    while ((j < n) && (T(i+j) == P(j)))
        j = j+1;
    end
    
    if(j>=n)
        ketemu(i) = 1;
    end %endif
    
    next = j - kmpNext(j);
    i = i+next;
end %endwhile

end

