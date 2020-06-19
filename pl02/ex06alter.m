%% Exercício 6

N=1e5;
n=23;
diasAno=365;

for niver=1:365
  prob=(niver/diasAno)*((diasAno-24)/365);
endfor

probFinal = 1-prob