S = 'ababba';
P = 'ab*';

[~, n] = size(S);
[~, m] = size(P);

M = [];

selisih = n-m;
x = 0;
for i=1:selisih
    
    for j=1:m
        if P(j) == '*' || P(j) == S(i+j-1)
           x = x+1;
        end
    end
    
    if x == m
        M = [M i];
    end
    
    x = 0;
end

