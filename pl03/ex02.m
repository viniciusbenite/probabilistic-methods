%%Ex 2, guião 3

%% a)
%% espaço = {nota 1, nota 2, ... , nota 99, nota 100}

%% b)
%% espaço_x = {5eur,50eur,100eur}

%% c)
totalNotas=100;
valorNotas=[5 50 100];
quantNotas=[90 9 1];
prob=quantNotas/totalNotas;
stem(valorNotas,prob), ylabel("Probabilidade X"), xlabel("Valor das notas"), title("Função de massa de probabilidade")
