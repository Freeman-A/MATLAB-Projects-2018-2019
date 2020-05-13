function cout = gas_max(e,k,A,n,max)
%Cautarea unei maxim de la k la n unei matrici A 
%si salvarea indexului unde este maxim
%=========================================================================
%INPUT: k - indicele de plecare, A - matricea, max - maximul actual, 
% n - indicele de incheiere, e - indice tip matrice
%=========================================================================
%Copyright Andreas Mihalea 2019
%=========================================================================
for i=k:n
    if (abs(A(e(i),k))>max)
        max=abs(A(e(i),k));
        cout=i;
    end
end