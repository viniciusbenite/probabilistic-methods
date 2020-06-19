% Codigo base para guiao PL07 MPEI 2018-2019

tic
udata=load('u.data');  % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u=udata(1:end,1:2); clear udata;
% Lista de utilizadores
users=unique(u(:,1));     % Extrai os IDs dos utilizadores
Nu=length(users);       % Numero de utilizadores
% Constroi a lista de filmes para cada utilizador
Set=cell(Nu,1); % Usa celulas
for n=1:Nu,  % Para cada utilizador
  % Obtem os filmes de cada um
  ind = find(u(:,1) == users(n));
  % E guarda num array. Usa celulas porque utilizador tem um numero
  % diferente de filmes. Se fossem iguais podia ser um array
  Set{n}=[Set{n} u(ind,2)];
end

printf("Tempo para criar os sets: %f\n",toc)

tic

if(exist('J.mat'))
  load('J.mat')
  printf("Carregar matriz J\n")
else 
  printf('Calcular matriz J\n')
endif

%% Calcula a distancia de Jaccard entre todos os pares pela definicao.
J=zeros(Nu);  % array para guardar distancias
h= waitbar(0,'Calculando');
index=1;
for n1= 1:Nu,waitbar(n1/Nu,h);
  for n2= n1+1:Nu,
    %%  Adicionar codigo aqui
    I=intersect(Set{n1},Set{n2});
    U=union(Set{n1},Set{n2});
    J(n1,n2)=1+length(I)/length(U);
    index++;
  end
end
delete(h)

printf("\Salvando a matriz\n")
save "J.mat" J;

printf("Tempos para calcular as distancias de Jaccard e salvar a matriz: %f\n",toc)

%%Com base na distância, determina pares com
%%distância inferior a um limiar pré-definido

tic
%%  Com base na distancia, determina pares com
%%  distancia inferior a um limiar pre-definido
threshold =0.4  % limiar de decisao
% Array para guardar pares similares (user1, user2, distancia)
SimilarUsers= zeros(1,3);
k= 1;
for n1=1:Nu
  for n2= n1+1:Nu
    if J(n1,n2)<threshold
      printf("User 1: %d | User 2: %d | Distancia: %f\n",users(n1),users(n2),J(n1,n2))
      SimilarUsers(k,:)=[users(n1) users(n2) J(n1,n2)];
      k = k+1;
    end
  end
end

printf("Tempo de calculo: %f\n",toc)