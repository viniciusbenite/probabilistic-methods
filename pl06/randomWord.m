function chave=randomWord(len)
  
  letras=[ 'a':'z' 'A':'Z' '0:9'];
  chave=letras(floor(rand(1,len)*length(letras)+1));
  
end