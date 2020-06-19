%%Funcao para inserir um elemento

function bloomfilter=insert(string,bloomfilter,k,n)
  for i=1:k
    string=[string num2str(i)];
    dummy=mod((myString2hash(string)),n);
    bloomfilter(dummy)=1;
  endfor
end