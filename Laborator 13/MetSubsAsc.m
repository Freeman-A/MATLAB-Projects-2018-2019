function x = MetSubsAsc(U,Y)
%Copyright (C) Andreas Mihalea
n=rank(U);
U1=[U Y];
x=zeros(n,1);
i=n;
while(i>0)
    x(i)= U1(i,n+1)/U1(i,i);
    k=i-1;
    while(k>0)
        U1(k,n+1) = U1(k,n+1) - U1(k,i) * x(i);
        k=k-1;
    end
  i=i-1;
end
end