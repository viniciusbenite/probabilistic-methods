 %%P02_9
 
 nProgramas = 20 +30 +50;
 
 pAndre=20/100;
 pBruno=30/100;
 pCarlos=50/100;
 
 pBugDadoAndre=0.01;
 pBugDadoBruno=0.05;
 pBugDadoCarlos=0.001;
 
 pBugEAndre= pBugDadoAndre * pAndre;
 pBugEBruno= pBugDadoBruno * pBruno;
 pBugECarlos= pBugDadoCarlos * pCarlos;
 
 pBug = pBugEAndre +pBugEBruno + pBugECarlos;
 
 %%Pela regra de Bayes
 
probabilidades = [(pBugDadoAndre*pAndre)/pBug,(pBugDadoBruno*pBruno)/pBug,(pBugDadoCarlos*pCarlos)/pBug];
[V,I] = max(probabilidades);
str = sprintf("A probabilidade de  o programa ser do Carlos é de : %d",v1)

A="É mais provável o programa ser do ANDRÉ";
B="É mais provável o programa ser do BRUNO";
C="É mais provável o programa ser do CARLOS";

if I == 1
    disp(A)
elseif I == 2
    disp(B)
else
    disp(C)
end