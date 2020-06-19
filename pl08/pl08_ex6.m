% pl08 ex 6)

% estado 4 -> estado absorvente -> matriz canonica: isolar na coluna da direita o estado absorvente

%  1   2   3    4           linha para coluna
H=[0.8 0   0.3  0;  % 1
   0.2 0.9 0.2  0;  % 2
   0   0.1 0.4  0;  % 3
   0   0   0.1  1;] % 4
   
sum(H);
H<=1;
H>=0; 

%b)
Hmil=H^1000;
X0=[1 0 0 0]; %vetor de estado
X=Hmil*X0';
R=Hmil(2,1) %comecar pagina 1 e estar na pagina 2
R2=X(2) %terminar na pagina 2

%c)
Hum=H;
Hdois=H^2;
Hdez=H^10;
Hcem=H^100;

%d) Matriz Q -> matriz q n tem o estado absorvente
Q=H(1:3,1:3)
%e) Matriz fundamental F = (I-Q)^(-1)    :: I = matriz identidade
F=inv(eye(size(Q))-Q) % numeros de vezes q eu passo na pagina


%f) 90 passos se para na 4 (somar a coluna)
sum(F)

%g) mesma resposta de f): numero de passos = tempo = 90 unidades de tempo

%h) diminuir as probabilidades na matriz H

%craw
from=1
to=4
for r=1:100
  state=craw(H,from,to);
  t(r)=length(state)
end

mean(t)