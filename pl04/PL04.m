%%Exercicio 1

N = 1000;
X0 = 7;
a = 51;
c = 13;
m = 100;

numbers = lcg( X0, a, c, m, N);
unicos = length(unique(numbers));
entre0e1 = numbers/m; 
unicosEntre0e1 = length(numbers/m);

%%Exercicio 2
p=0.3
rand(1,10) < p
lancamentos = floor( rand(1,15) * 6)+1 %%Valores entre 0 e 6

N = 2000;
minimo = -4;
maximo = 10;
gama = maximo - minimo;
numeros = rand(1,N) * gama + minimo;
figure(1)
hist(numeros)

%%Exercicio 3
figure(2)
hist(bernoulli(0.3 , 1e6), 0:1)

%%Exercicio 4
clear;
clc;
p = 0.5 ;
n = 10; 
N = 1e5;
b =  binomial(n,p,N);
figure(3)
hist(b ,'b')