function e = iden(n)
%Functia il creaza pe e si completeaza cu aceeasi valoare i si il transpune
%pe i
%INPUT: n - dimensiunea vectorului (EX: pentru n=3 =>
%OUTPUT:
% 1
% 2
% 3)
%=========================================================================
%Copyright Andreas Mihalea 2019
%=========================================================================
e=zeros(1,n);
for i=1:n
    e(i)=i;
end
e=e';
end