%Copyright (C) Andreas Mihalea
%Exemple realizate de profesorul Liviu Marin
% Cazul 1: A admite factorizarea LU fara pivotare (stabil)
A = [1 2 3; 2 6 6; 1 6 10];
b = [6; 14; 17];
sistem(A,b);
% Cazul 2: A nu admite factorizarea LU fara pivotare
A = [0 2 3; 2 6 6; 1 6 10];
b = [5; 14; 17];
sistem(A,b);
% Cazul 3: A nu este o matrice inversabila
A = [2 6 6; 1 2 3; 1 4 3];
b = [14; 6; 8];
sistem(A,b);
% Cazul 4: A nu este o matrice patratica
A = [2 6 6; 1 2 3];
b = [14; 6];
sistem(A,b);
% Cazul 5: A si b nu sunt compatibile
A = [2 6 6; 1 2 3; 1 4 3];
b = [14; 6; 8; 1];
sistem(A,b);
% Cazul 6: A admite factorizarea LU fara pivotare (instabil)
A = [1e-12 1 -1; 3 -4 5; 40 -60 0];
b = [17+1e-12; -62; -1160];
sistem(A,b);