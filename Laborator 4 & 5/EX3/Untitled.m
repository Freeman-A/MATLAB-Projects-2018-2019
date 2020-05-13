%Copyright 2019 Mihalea Andreas gr.104
clear();
x=input('x=');
f = x^2+2*x-3;
fd = 0;
h=eps;
fd1 = 0;
while fd < h
    fh = (x+h)^2 + 2*(x+h)-3;
    fd = (fh-f)/h;
    h=h+1;
end
h=eps;
while fd1 < h
    fh1 = (x-h)^2 + 2*(x-h)-3;
    fd1 = (f-fh1)/h;
    h=h+1;
end

err_abs = abs(fd1 - fd);
fprintf("Eroarea absoluta este %f \n", err_abs);
err_rel = err_abs / abs(fd1);
fprintf("Eroarea relativa este %f \n", err_rel);
fprintf("Tabel - Legenda:\n");
fprintf("err_abs: eroarea absoulta, err_rel: eroarea relativa \n");
fprintf("fd1: derivata de la EX#3 si fd: derivata de la EX#2 \n");
t = table (err_abs, err_rel, fd1, fd);
t(1,:)
fprintf("Dupa tabel observam ca err_abs este 2 pentru orice x>=3 \n");
fprintf("1 pentru x=2 si 0 pentru x=1 \n");

