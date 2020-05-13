function A = gauss_elim(A,e,k,n)
%Functia de elimanare gauss cu pivotare partiala
%INPUT: A - matricea, e - vector de indici, k si n - indici
%========================================================================
%Copyright Andreas Mihalea 2019
%========================================================================
for i=(k+1):n
    m(e(i),k)=A(e(i),k)/A(e(k),k);  
    for j=k:n+1
        A(e(i),j)=A(e(i),j)-m(e(i),k)*A(e(k),j);
    end
end
end