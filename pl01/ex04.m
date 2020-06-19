function ex04(N,p,k,n)
  %%N = número de experiencias
  %%p = prob. cara
  %%k = num de caras
  %%n = num de lancamentos
  for i = 1:n
    lancamentos = rand(n,N) > p;
    sucessos= sum(lancamentos)==k;
    probSimulacao= sum(sucessos)/N
  endfor
  
  %%stem(n,probSimulacao);

 endfunction