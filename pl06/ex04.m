%% PL 06

%% ex  04

clear;

letras=['a':'z' 'A':'Z'];
arquivos={'pg21209.txt','pg26017.txt'};
pmf=pmfLetrasPT(arquivos,letras);

n=8000;
len=40;
nStr=1000;
nStr2=10000;
max=15;
fakePos=zeros(1,max);
fakePosProb=zeros(1,max);

for k=1:max
  
  add=0;
  inBloom=0;

  printf("\nInitiate\n");
  bloom=initiate(n);

  printf("\nInsert\n");
  for x=1:nStr
    word=randomWord2(len,pmf,letras);
    bloom=insert(word,bloom,k,n);
    add++;
  end
  
  printf("\nCheck\n");
  for x=1:nStr2
    word=randomWord(len);
    val=isMember(word,bloom,k,n);
    if val==1
      inBloom++;
    endif
  end
  
      inBloom
      add
      fakePos(k)=inBloom;
      fakePosProb(k)=inBloom/added;
      
endfor

fakePos
figure(1)
plot(fakePos)