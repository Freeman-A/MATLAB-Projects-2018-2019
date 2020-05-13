%%Copyright 2019 Mihalea Andreas (Gr. 104)
Table = cell(8, 5);
x=[pi/2, pi/3, pi/4, pi/6, -pi/2, -pi/3, -pi/4, -pi/6];
for i=1:8
x1=x(i);
ok=0;
if(x1<0)
    x1=-x1;
    ok=1;
end
k=0;
suma=0;
sinx = sin(x1);
te = ((-1)^k) /factorial(2*k+1) * (x1^(2*k+1)); 
while  te >= eps
    suma = suma + ((-1)^k) /factorial(2*k+1) * (x1^(2*k+1));    
    te = ((-1)^k) /factorial(2*k+1) * (x1^(2*k+1));
    k=k+1;
end
Eroareabs = abs(sinx - suma);
Eroarerel = Eroareabs / abs(sinx);
if ok==1
Table(i, :) = {-x1 -sinx -suma Eroareabs Eroarerel};
fprintf('%f  %f   %f   %f   %f\n', Table{i, :});
end
if ok==0 
    Table(i, :) = {x1 sinx suma Eroareabs Eroarerel};
fprintf('%f  %f   %f   %f   %f\n', Table{i, :});
end
end