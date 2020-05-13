N = input("N=");
x = zeros(1,N);
x(1) = input("x1=");
x(2) = input("x2=");
for i=3:N*N
  x(i) = x(i-1)+x(i-2);
end
mat=reshape(x,[N,N]);
mat=mat';
FILE = fopen("A.txt","w");
for i=1:N
    for j=1:N
     fprintf(FILE,"%i ",mat(i,j));
    end
    fprintf(FILE," \n");
end