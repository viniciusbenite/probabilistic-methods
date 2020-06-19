function isMember = isMemberCountFilter (str,bloom,k,n)
  
  isMember=0;
  
  for i=1:k
    str=[str num2str(k*10)];
    index=mod((myString2hash(str)),n)+1;
   
    if bloom(index) !=0
     isMember=bloom(index);
    endif    
  endfor
end