%% Exercício 6

N=1e5;
n=23;

certo=floor(rand(n,N)*365);
dummy=0;
for i=1:N
  if length(unique(certo(:,i)))==n;
    dummy=dummy+1;
  endif
endfor

prob_a=dummy/N