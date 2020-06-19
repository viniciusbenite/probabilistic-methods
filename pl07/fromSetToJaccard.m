function J=fromSetToJaccard(Set,Nu)
  
if(exist('J.mat'))
  load('J.mat')
  printf("Carregando matriz J\n")
else 
  printf('Calculando matriz J\n')
endif

%% Calcula a distancia de Jaccard entre todos os pares pela definicao.
J=zeros(Nu);  % array para guardar distancias
h=waitbar(0,'Calculando');
index=1;
for n1=1:Nu,waitbar(n1/Nu,h);
  for n2=n1+1:Nu
    %%  Adicionar codigo aqui
    I=intersect(Set{n1},Set{n2});
    U=union(Set{n1},Set{n2});
    J(n1,n2)=1+length(I)/length(U);
    index++;
  end
end

J;
delete (h)
printf("\nSaving matrix to J.mat...\n")
save("J.mat",J);
endfunction