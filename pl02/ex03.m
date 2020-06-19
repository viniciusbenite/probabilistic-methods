%% exercício 3

positivoCancro=0.9;
falsoPostivoCancro=0.1;
pMulheres=1/10000;
pMulheres2=1/1000;

prob1=pMulheres*positivoCancro+(1-pMulheres)*positivoCancro;
prob_final1=(positivoCancro*pMulheres)/prob1

prob2=pMulheres2*positivoCancro+(1-pMulheres2)*positivoCancro;
prob_final2=(positivoCancro*pMulheres2)/prob2

%% exp

exp(1,:)=rand(1,10e7)<1/10000;

for i= 1:10e7
  if exp(1,i)==1
    exp(2,i)=rand(1)<0.9;
  else
    exp(2,i)=rand(1)<0.1;
    
endif

endfor

cFav=sum(sum(exp)==2);
cPoss=sum(exp(2,:));
pTeorica= cFav/cPoss