%% ex 05, guião 3

%%probabilidade p de falha do motor
%%independentes

p2= ones(1,100); %%array de 1x100
p4 = ones(1,100);

for k= 1:100
 p=k/100;
 r = ((4*p^3*(1-p) + p^4))/(p^2); %% razão entre p4 e p2
 p2(1,k)=p^2;
 p4(1,k)= (4*p^3*(1-p) + p^4);
 printf("Probabilidade de queda = %d => razão = %d \n", p,r);
endfor

figure(1)
subplot(2,1,1)
stem(p2)
subplot(2,1,2)
stem(p4)

figure(2)
plot(a2Motores,'bo')
title('P dos 2 aviões cairem');
hold on
plot(a4Motores,'ro') %%circulos vermelhos