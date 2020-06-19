%% PL 06

%% ex 03)

clear;

letras=['a':'z' 'A':'Z'];
arquivo={'pg21209.txt','pg26017.txt'};
pmf=pmfLetrasPT(arquivo,letras);

n=8000;
len=40;
nStr=1000;
nStr2=10000;
k=6;
array=zeros(1,n);

add=0;
inBloom=0;

%%Iniciar o bloom:
printf("\nInitiate\n");
bloom=initiate(n);

%%Inserir strings:
printf("\nInsert\n");

for x=1:nStr
  word=randomWord2(len,pmf,letras);
  bloom=insert(word,bloom,k,n);
  add++;
end

%%Checar
printf("\nCheck\n");

for x=1:nStr2
  word=randomWord(len);
  val=isMember(word,bloom,k,n);
  if val==1
    inBloom++;
  endif
end

add
inBloom