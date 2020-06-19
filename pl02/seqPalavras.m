function probabilidades  = seqPalavras(palavras, seq, N)
    
    
matriz = floor(rand(seq,N)*palavras+1);

cfA=0;
cfB=0;
cfC=0;
cfIncluir2= 0;
cfIncluir1Incluir2=0;

for c=1:N
  if matriz(1,c) ==1 && matriz(2,c) ==2
    cfA+=1;
  end
  if ismember(1,matriz(:,c))
    cfB+=1;
  end
  if ismember(2,matriz(:,c))
    cfIncluir2+=1;
  end  
  if ismember(1,matriz(:,c)) || ismember(2,matriz(:,c))
    cfC+=1;
  end
   if ismember(1,matriz(:,c)) && ismember(2,matriz(:,c))
    cfIncluir1Incluir2+=1;
  end
end
  probabilidades = [ cfA, cfB ,cfC cfIncluir2, cfIncluir1Incluir2 ] ;

end
