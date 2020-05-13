function afisare(X,Y,Z)
figure(1);
mesh(X,Y,Z);
grid on;
figure(2);
mesh(X,Y,Z);
view(0,90);
figure(3);
mesh(X,Y,Z);
view(0,0);
figure(4);
mesh(X,Y,Z);
view(90,0);
end