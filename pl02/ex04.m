%%Exercício 4

%% a)

N=1e5;
nDardos=20;
alvos=floor(rand(nDardos,N)*100);

dummy=0;

for c=1:N
  if length(unique(alvos(:,c))) == nDardos 
    dummy = dummy+1;
  endif
endfor

probFinal_a = dummy/N

%% b)

probFinal_b=1-probFinal_a