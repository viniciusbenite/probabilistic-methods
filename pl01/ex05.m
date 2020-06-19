%%exercicio 05

function ex05(N,p,k,n)
  %%N = número de experiencias
  %%p = prob. de torneiras defeituosas
  %%k = num de peças defeituosas
  %%n = num de peças
  for i = 1:n
    lancamentos = rand(n,N) > p;
    sucessos= sum(lancamentos)<=k;
    probSimulacao= sum(sucessos)/N
  endfor
 endfunction