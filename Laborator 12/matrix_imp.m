function y = matrix_imp(n)
y=zeros(n,n);
for i=1:n
    for j=1:n
        y(i,j) = 1;
    end
end
end