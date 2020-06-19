%%Funcao para ver se o elemento pertence

function resultado=isMember(string,bloomfilter,k,n)
 
resultado=1;
h=zeros(1,k); 

for i=1:k
  string=[string num2str(i)];
  h(i)=mod((myString2hash(string)),n); 
  %%dummy(i)=myString2hash(string);   
endfor

if all(bloomfilter(h)==1)
   resultado=1;
else
   resultado=0;
endif
end