function xsol = gauss(A,B,C)
%Functia gauss cu pivotare partiala
%========================================================================
%INPUT: A - matricea sistem, B - matricea nr libere, C - numele fisierului
%OUTPUT: Se afiseaza intr-un fisier text cu numele C sau se va afisa un 
%mesaj de compatibilitate
%========================================================================
%Copyright 2019 Andreas Mihalea
%========================================================================
ex = ~isvector(A);
[ma,na]=size(A);
[mb,~]=size(B);
if(ex==1 && ma==mb && ma==na)
A1 = [A B];
n=rank(A);
e=iden(n);
for k=1:n-1
i1=gas_max(e,k,A1,n,0);
e=pp(e,k,i1);
A1 = gauss_elim(A1,e,k,n);
end
xsol = zeros(1,n);
xsol = aflarea_x(A1,n,e);
fid=fopen(C,"w");
fprintf(fid, "Solutiile sunt: \n");
for i=1:n
fprintf(fid,"x(%-i)=%f \n",i,xsol(i));
end
else
    disp("A nu e matrice patratica sau nu e compatibila cu B");
end
end