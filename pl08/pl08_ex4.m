%pl08_ex4

p=0.4;
q=0.6;

%   A        B  C D
T=[ p^2      0  0 q^2    ;  % A
    (1-p)^2  0  0 q*(1-q) ;  % B
    p*(1-p)  0  0 q*(1-q) ;  % C
    p*(1-p)  1  1 (1-q)^2;]  % D
 
sum(T) %ok
T<=1 % ok
T>=0 % ok

