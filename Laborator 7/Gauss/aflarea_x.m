function x1 = aflarea_x(A,n,e)
%Aflarea solutiilor dintr-o matrice inferior triunghiulara
%=========================================================================
%INPUT: A - matricea eliminata prin functia Gauss_elim
%n - matricea A fara nr
%e - matricea indice
%=========================================================================
%Copyright Andreas Mihalea 2019
%=========================================================================
x(n)=0;
x=x';
x(n)=A(e(n),n+1)/A(e(n),n);
i=n-1;
while i>0
    x(i)=(A(e(i),n+1)-A(e(i),i+1:n)*x(i+1:n))/(A(e(i),i));
   i=i-1;
end
x1=x;
end