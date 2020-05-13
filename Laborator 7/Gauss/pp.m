function e = pp(e,k,i)
%Interschimbare k cu valoarea maxima daca sunt diferite.
%INPUT: e = Matrice, k,i - indice de interschimbare.
%EX: pp([2 5 6], 1, 3) => OUTPUT: [6 5 2]
%=========================================================================
%Copyright Andreas Mihalea 2019
%=========================================================================
if (e(k)~=e(i))
    aux=e(k);
    e(k)=e(i);
    e(i)=aux;
end
end