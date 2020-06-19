%%Ex 04, guião 03

pDefeito=0.3;
n=5;
matriz=zeros(1,n);

for j=1:5
  matriz(1,j) = binopdf(j,n,pDefeito);
endfor

hist(matriz)

pMax2 = 1 - matriz(1,4) - matriz(1,5) %%alínea b)