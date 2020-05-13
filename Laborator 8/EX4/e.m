clc;clear;close all;
x=linspace(-3,3,100);
y=linspace(-3,3,100);
[X,Y]=meshgrid(x,y);
Z=X.^2/3+2.*sin(3.*Y);
Z(sqrt(X.^2+Y.^2)<1)=NaN;
afisare(X,Y,Z);