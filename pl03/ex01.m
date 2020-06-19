%%Ex 01, guião 3

faces=6;
x=1:faces
p=ones(1,faces)/faces
subplot(2,1,1);
stem(x,p),title("Função de massa de probabilidade"),xlabel("x1"),ylabel("P[X=x1]")
y=cumsum([0 p 0])
subplot(2,1,2)
stairs([-1 x 8],y), ylim([0 1]), xlim([-1 7]), title("Função de distribuição acumulada"), xlabel("x_1"),ylabel("P [X<=x1]")