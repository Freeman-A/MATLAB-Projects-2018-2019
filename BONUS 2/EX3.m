clear;
%a
x=[0.7 3.3 5.6 7.5 6.4 4.4 0.3 -1.1];
y=[4.0 4.7 4.0 1.3 -1.1 -3.0 -2.5 1.3];
sx=suma_vector(x);
sy=suma_vector(y);
sx8=sx/8;
sy8=sy/8;
s3=0;
for i=1:8
s3=s3+sqrt((sx8-x(i))^2+(sy8-y(i))^2);
end
r=s3/8;
fprintf("xc=%f, yc=%f, zc=%f \n",sx8,sy8,r);
%b+c
functie(sx8,sy8,r,x,y);