function bloom = insertCountFilter(str,bloom,k,n)
  
  for i=1:k
    str=[str num2str(k*10)];
    index=mod((string2hash(str)),n)+1;
    bloom(index)+=1;    
  endfor
end
