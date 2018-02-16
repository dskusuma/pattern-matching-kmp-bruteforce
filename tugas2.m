T = 'ACGACCAT';
P = 'AC';
m = size(P,2);
n = size(T,2);

sol = KMPSearch(n,m,P,T);
