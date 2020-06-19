function chave=randomWord2(len,pmf,letras)
 
  F=cumsum(pmf);
  
  for k=1:len
    U=rand();
    i=1+sum(U>F);
    numbers(k)=letras(i);
  endfor
  
  chave=char(numbers);
  
end