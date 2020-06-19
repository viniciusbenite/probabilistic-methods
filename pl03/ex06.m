%% ex 06, pl03

pDefeito = 1/1000;
n=8000; %%amostra total
defeitos=7;
m=pDefeito*n; %%lambda

x=poisspdf(defeitos,m) %%poisson= (m^defeitos * e^(-m))/factorial(defeitos)


