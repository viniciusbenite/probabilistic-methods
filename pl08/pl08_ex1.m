%% PL 08

%% ex 01)
%%
%% prob1 -> probabilidade de presenca precedente de falta
%% prob2 -> probabilidade de presenca precedente de presenca

prob1=0.8;
probF1=1-prob1;

prob2=0.7;
probF2=1-prob2;

%% Matriz de estados

T=[prob1 prob2 ; 
   probF1 probF2];

%% Vetor de estados X
%% a) presente -> presente b) n presente -> presente

X=[1 0]; % presenca -> presenca
X1=[0 1]; % falta -> presenca
P=(T^2).*X; % -> Chapman-Kolmogorov
P1=(T^2).*X1;
prob_A=P(1,1)
prob_B=P1(1,2)
P3=(T^30).*X; % 15 aulas
prob_C=P3(1,1)