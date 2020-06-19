%% ex 07, pl 03

lambda = 15;
pa=poisspdf(0,lambda) %% alínea a)
soma2=0;

for i=0:10
  soma=sum(poisspdf(i,lambda));
  soma2 += poisspdf(i,lambda);
endfor
soma
soma2
pb=1-soma %%alínea b)
pb2=1-soma2