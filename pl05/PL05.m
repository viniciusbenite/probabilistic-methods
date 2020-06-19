%%PL 05

%%01)

key = gerarKey(3,20)

%%02)

hash_sdbm=string2hash('hello world','sdbm')
hash_djb2=string2hash('hello world','djb2')

%%03)
%% numero de elementos = 1000
%% fator de carga = numero de elementos da tabela / tamanho da tabela
%% fator de carga = 0.8 = 1000/n

%% N é o numero primo mais proximo de n 
%% hash = mod(hash * 33 + str(:,i), N);
%% neste caso N=1259

N=1259;
array=zeros(1,N);

for x=1:1000
  array(string2hashRD(gerarKey(3,20),1260))+=1;
endfor

%% plot
figure(1)
subplot(1,2,1)
xbins = 0:6;
hist(array,xbins)
subplot(1,2,2)
stem(array)

%%num de colisoes = num listas ligadas
for k = 1:N
  colisoes(k) = sum(array==k);
endfor

