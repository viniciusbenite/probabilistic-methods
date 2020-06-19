%%PL 06

%% ex 06

%%Initiate
n=300000;
k=3;
add=0;
i=0;

printf("\nInititate\n");
arquivo="gutenberg.txt";
bloom=initiate(n);

%%Insert
printf("\nInsert\n");
arq=fopen(arquivo);

while 1
  linha=fgetl(arq);
  if linha == -1
    break
  endif
  remain=linha;
  while length(remain)>0
    [token,remain]=strtok(remain, ' ,;.-');
    if strcmp(remain,"não")==1
      printf("não => %d",i);
    endif
    bloom=insertCountFilter(token,bloom,k,n);
   endwhile
endwhile
fclose(arq);

%%Check
printf("\nCheck\n");
arq=fopen(arquivo);
while 1
  linha=fgetl(arq);
  if linha== -1
    break
  endif
  remain=linha;
  while length(remain)>0
    [token,remain]=strtok(remain, ' ,;.-');
    if strcmp(remain,"nao")==1
      printf("nao => %d", i);
    endif
    printf("%s => %d\n",token,isMemberCountFilter(token,bloom,k,n));
   endwhile
endwhile
fclose(arq);