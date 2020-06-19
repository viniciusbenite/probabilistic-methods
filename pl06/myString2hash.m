function hash=myString2hash(string)
    
  string=double(string);
  hash=5381*ones(size(string,1),1);
  
  for i=1:size(string,2)
    hash=mod(hash*33+string(:,i),2^31-1);
  endfor
  
end