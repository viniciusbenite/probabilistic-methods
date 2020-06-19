%% PL 07 ex 02)

clear;

tic
[sets,Nu,users]=readToSet("u.data");
%[ sets, Nu, users] = readToSetElements("u.data",100);

printf("Tempo para criar os sets: %f\n",toc)

tic
J=fromSetToJaccard(sets,Nu);
printf("Tempos para calcular as distancias de Jaccard e salvar a matriz: %f\n",toc)
Nu
tic
similarUsers=evaluateDistances(3,J,Nu,users,0.4);
printf("Tempo de calculo: %f\n",toc)
%sets{1}