function key = gerarKey(nMin,nMax)
  
  len=0;
  
  while len < nMin
    len=floor(rand(1,1)*nMax+1);
  endwhile
  
  letras = [ 'a':'z' 'A':'Z'];
  key = letras(floor(rand(1,len)*length(letras) +1));
  
end
  