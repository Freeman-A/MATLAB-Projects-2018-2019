%Copyright Andreas Mihalea 2019
clear
close all
x=linspace(-5,5,10);
f=zeros(1,10);
for i=1:length(x)
   e=x(i);
   if(e>-2 && e<0)
        f(i)=e^2;
   elseif(e>=0 && e<3) 
       f(i)=e^3;
   elseif(e>=3 && e<4)
        f(i)=e^2+18;
   end
end
plot(x,f);
legend('f(x)','FontName','Arial','FontSize',12,'TextColor','black');
title('Graficul functiei f', 'FontName', 'Arial','FontSize',14);