clc;clear;
x=linspace(-10,10,100);
y=linspace(-10,10,100);
[X,Y]=meshgrid(x,y);
Z=X.^2/3+2.*sin(3.*Y);
Z(sqrt(X.^2+Y.^2)<1 | sqrt(X.^2+Y.^2)>3)=NaN;
afisare(X,Y,Z);