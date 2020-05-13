%EX1 d
syms x y z
[solx,soly,solz] = solve(5*x+6*y-3*z == 10, 3*x-3*y+2*z == 14, 2*x-4*y-12*z==24);
fprintf("Solutiile ecuatiei sunt: %s, %s, %s \n", solx,soly,solz);
%EX3 c
clear
syms x(t) y(t) z(t)
a=20;
b=10;
h=18;
n=5;
r(t)=((a*b)/sqrt((b*cos(t))^2+(a*sin(t))^2))*exp(-0.04*t);
x(t)=r(t)*cos(t);
y(t)=r(t)*sin(t);
z(t)=(h*t)/(2*n*pi);
fplot3(x,y,z,[0,2*n*pi]);
pcmmpQR1([3 -6 26; 4 -8 -7; 0 4 4; 0 -3 -3], [0; 1e-20; 1]);
pcmmpQR1([9 0 26; 12 0 -7; 0 4 4; 0 -3 -3], [1 -1; 0 -10; 0 0]);