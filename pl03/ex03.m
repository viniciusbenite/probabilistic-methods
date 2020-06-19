%% Ex 03, guião 3

%% 4 lançamentos. Sk = {0,1,2,3,4}

%%P03_2_a

nLancamentos=4;
pCoroa=0.5;
x=[0 1 2 3 4]
probabilidades= [ binomial(pCoroa,nLancamentos,0) binomial(pCoroa,nLancamentos,1) binomial(pCoroa,nLancamentos,2) binomial(pCoroa,nLancamentos,3) binomial(pCoroa,nLancamentos,4) ]
sum(probabilidades);

stem(x,probabilidades)
title("Probabilidade")
xlabel("x_1")
ylabel("P [X=x_1]")


media = pCoroa*nLancamentos
Var= nLancamentos*pCoroa*(1-pCoroa)
desvio = sqrt(Var)

%%Distribuição binomial (discreta)
%%Ver função "binomial.m"

pPeloMenosde2_a = 1 - (probabilidades(1,1)+probabilidades(1,2))
pPeloMenosde2_b=sum(probabilidades(x>=2))
pAte1Coroa_a = probabilidades(1,1)+probabilidades(1,2)
pAte1Coroa_b= sum(probabilidades(x <=1))
pEntre1e2_a =  probabilidades(1,2)+probabilidades(1,3) + probabilidades(1,4)
pEntre1e2_b= sum(probabilidades(x >=1  & x <=3))

