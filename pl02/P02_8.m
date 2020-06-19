%%P02_8

palavras=3;
seq=2;
N=1e3;

retorno = seqPalavras( palavras, seq, N);

p8_a=retorno(1)/N
p8_b=retorno(2)/N
p8_c=retorno(3)/N
p8_d=retorno(5)/retorno(4)

array=zeros(1,10);

for palavras = 11:20
  retorno = seqPalavras( palavras, seq, N);
  array(1,palavras-10) = retorno(5)/retorno(4);
end

x= [11,12,13,14,15,16,17,18,19,20];
array;
stem(x,array)