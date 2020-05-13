%Copyright Andreas Mihalea 2019
%EX1
clear
clc
close all;
x=linspace(-2*pi +1.e-5, 2*pi - 1.e-5, 100);
n=(1:3);
sum=zeros(3,100);
for i=1:length(n)
    for j=1:i
    sum(i,:)=(-1)^j*x.^(2*j)/factorial(2*j);
    end
end
e=zeros(1,100);
for i=1:length(x)
   e(i)=cos(x(i));
   disp(e(i));
end
figure
hold on
plot(x,e,x,sum);
legend({'cos(x)','n=1','n=2','n=3'},'FontName', 'Arial','FontSize',12,'TextColor','black');
title('Graficul functiei cos si functiei Taylor', 'FontName', 'Arial','FontSize',14);