%% PL 06

%% ex 02)
m=10;
n=8*m;
k=3;

printf("\nInitiate\n");
bloomfilter=initiate(n,k);

printf("\nInsert\n");
bloomfilter=insert("Portugal",bloomfilter,k,n);
bloomfilter=insert("Espanha",bloomfilter,k,n);
bloomfilter=insert("Inglaterra",bloomfilter,k,n);
bloomfilter=insert("Brasil",bloomfilter,k,n);
stem(bloomfilter)

printf("\nCheck\n");
isMember("Portugal",bloomfilter,k,n)
isMember("Espanha",bloomfilter,k,n)
isMember("Franca",bloomfilter,k,n)
isMember("Inglaterra",bloomfilter,k,n)
isMember("Russia",bloomfilter,k,n)
isMember("Brasil",bloomfilter,k,n)
isMember("Argentina",bloomfilter,k,n)
isMember("EUA",bloomfilter,k,n)
isMember("portugal",bloomfilter,k,n)
isMember("PORTUGAL",bloomfilter,k,n)