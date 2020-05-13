clc;clear;close all;
x=linspace(-10,10,100);
y=linspace(-10,10,100);
[X,Y]=meshgrid(x,y);
r=X.^2+Y.^2;
Z=sin(r)./r;
afisare(X,Y,Z);