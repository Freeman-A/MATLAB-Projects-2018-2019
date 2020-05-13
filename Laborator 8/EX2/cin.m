% Cazul 1: A admite factorizarea Cholesky 
% Solutia exacta x = [1; 1; 1]
A = [25 15 -5; 15 18 0; -5 0 11];
b = [35; 33; 6];
systemA(A,b);

% Cazul 2: A NU este o matrice patratica
% A nu admite factorizarea Cholesky 
A = [25 16 -5 1; 15 18 0 2; -5 0 11 3];
b = [35; 33; 6];
systemA(A,b);
% Cazul 3: A NU este o matrice simetrica
% A nu admite factorizarea Cholesky 
A = [25 10 -5; 15 18 0; -5 0 11];
b = [35; 33; 6];
systemA(A,b);
% Cazul 4: A NU este o matrice PD
% A nu admite factorizarea Cholesky 
A = [25 15 -5; 15 8 0; -5 0 11];
b = [35; 33; 6];
systemA(A,b);
% Cazul 5: A si b nu sunt compatibili
A = [2 6 6; 1 2 3; 1 4 3];
b = [14; 6; 8; 1];
systemA(A,b);