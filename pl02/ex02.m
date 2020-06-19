%% a)
numLancamentos=10;
probCara=0.5;
N=1e5;

r=rand(numLancamentos,N)<probCara;
final=sum(sum(r)==10);
p_final_a=final/N

%%b) 
numLancamentos=11;
probCara=0.5;
N=10e5;

r=rand(numLancamentos,N)<probCara;
caras=sum(r);
peloMenosDezCaras=sum(sum(r(1:10,:))==10);
onzeCaras=sum(caras=11);
p_final_b=onzeCaras/peloMenosDezCaras