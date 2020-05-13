function afisare(xc,yc,r,x1,y)
x=linspace(0,2*pi,100);
xcr=xc+r.*cos(x);
ycr=yc+r.*sin(x);
grid on;
plot(xcr,ycr,'LineWidth',1.5);
hold on;
scatter(x1,y,'o','LineWidth',1.5,'MarkerEdgeColor','k','MarkerFaceColor','y');
line(x1,y);
end