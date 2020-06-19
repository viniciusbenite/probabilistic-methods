%pl08_ex3

T=rand(20);
T=T./sum(T);
sum(T);

vetor_estado=zeros(1,20)';
vetor_estado(1,1)=1;

vinte=T^20*vetor_estado;
a=vinte(20)

quarenta=T^40*vetor_estado;
b=quarenta(20)

cem = T^100*vetor_estado;
c=cem(20)
