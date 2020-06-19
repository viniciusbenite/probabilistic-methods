%% Exercício 7

N=1e5;
faces=5;
n=2; %%lançamentos

%%evento A => soma dos lançamentos = 10
%%evento B => pelo menos um dado = 5
%%evento C => pelo menos um dado = 1

%%2 acontecimentos são independentes sse P(AB) = P(A)*P(B)

%%P(AB) => probabilidade da soma ser 10 e um dos dados = 5

casos=floor(rand(n,N)*5+1);
somaLancamentos=sum(casos);
cincos1=sum(casos==5);
sairUm5=sum(cincos1>=1);
AB =sum(sum(casos==5&sum(casos)==10)>=1);

soma10 = sum(somaLancamentos==10);

pA= soma10/N;
pB=sairUm5/N;
pAxB=pA*pB
pAB=AB/N