%% PL 06

%% ex 05

n=300000;
k=3;
add=0;
i=0;
diffWords=0;

%%Initiate
printf("\nInitiate\n");
arquivo1="gutenberg.txt";
arquivo2="gutenberg2.txt";
bloom=initiate(n);

%%Insert
printf("\nInsert\n");
arq1=fopen(arquivo1);

while 1
  linha=fgetl(arq1);
  if linha==-1
    break
  endif
  remain=linha;
  while length(remain)>0
    [token,remain]=strtok(remain,' ,;.-');
    if strcmp(remain,"não")==1
      printf("não => %d",i);
    endif
    bloom=insertCountFilter(token,bloom,k,n);
   endwhile
endwhile
fclose(arq1);

printf("\nCheck\n");
arq2=fopen(arquivo2);

while 1
  linha=fgetl(arq2);
  if linha== -1
    break
  endif
  remain=linha;
  while length(remain)>0
    [token,remain]=strtok(remain,' ,;.-');
    if strcmp(remain,"não")==1
      printf("não => %d",i);
    endif
    if(isMemberCountFilter(token,bloom,k,n)==0)
      printf("%s\n",token);
      diffWords++;
    endif
   endwhile
endwhile
fclose(arq2);