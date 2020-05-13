%Aici sunt introduse date de la EX3 si date imcompatibile
%=========================================================================
%Copyright Andreas Mihalea 2019
%=========================================================================
A = [2 1 3; 3 2 4; 5 -4 -1];
B = [4;5;8];
gauss(A,B,"nume.txt");
clear;
a=10^(-12);
A = [a 1 -1; 3 -4 5; 40 -60 0];
B = [17+a;-62;-1160];
gauss(A,B,"nume1.txt");
clear;
%A nu e matrice patratica
A = [2 1 3; 4 5 6];
B = [1;2];
gauss(A,B);
%A nu e compatibila cu B
clear;
A = [2 1 3; 4 5 6];
B = [2 1];
gauss(A,B);