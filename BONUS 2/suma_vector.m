function y = suma_vector(x)
[~,ma]=size(x);
y=0;
for i=1:ma
    y=y+x(i);
end
end