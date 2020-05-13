function X = pcmmpQR1(A,b)
[ma,na] = size(A);
I = matrix_imp(na);
X = I/A;
[ma1,na1] = size(X);
[ma2,~] = size(b);
if(ma1 == na && na1 == ma && ma2 == na)
    [Q,R] = GSmodificat(A);
    E = Q*inv(R);
    X = E*b;
    disp("Solutiile sunt");
    disp(X);
else
    disp('Matricea nu este inversabila la stanga sau matricea nu este compatibila cu b');
end
end