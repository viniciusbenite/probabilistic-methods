function array = lcg ( X0, a, c, m, N)
  array = zeros(1,N+1);
  if X0<=m && X0>=1
    array(1,1) = X0;
  
    for k = 2:N+1
      array(k) = mod(a * array(k-1)+c ,m);
    endfor  
   array = array(2:N+1); 
  endif
end
  