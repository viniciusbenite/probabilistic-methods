%% pl08 ex 02)

%Matriz transição: coluna=estado atual e linha=proximo estado

%   A       B         C         
T=[1/3     1/4        0    ;    % A
   1/3  1-(1/4+1/5)   1/2  ;    % B
   1/3     1/5        1/2  ;]   % C
   
% soma = 1 E T>=0 e T<=1 --> matriz estocastica
sum(T) 
T>=0
T<=1

% b)
% 90 alunos
% A = 60 ; B=C=15

vetor_estados=[60;15;15]

Tc=T^30; % ao final de 30 dias
x30=Tc*vetor_estados;
round(x30)

vetor_estados2=[30;30;30]

Td=T^30;
y30=Td*vetor_estados2;
round(y30)