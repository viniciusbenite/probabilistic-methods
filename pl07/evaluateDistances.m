function SimilarUsers=evaluateDistances(K,J,Nu,users,threshold)
   % Array para guardar pares similares (user1, user2, distância)
SimilarUsers= zeros(1,K);
k=1;
for n1=1:Nu
  for n2= n1+1:Nu
    if J(n1,n2)<threshold
      printf("User 1: %d | User 2: %d | Distancia: %f\n",users(n1),users(n2),J(n1,n2))
      SimilarUsers(k,:)=[users(n1) users(n2) J(n1,n2)];
      k = k+1;
    end
  end
end
  if k==1
    printf("Sem resultados %f\n", threshold)
  endif
endfunction