function Y = MetSubsDesc(L,B)
%Copyright (C) Andreas Mihalea
n=rank(L);
Y=zeros(1,n);
for i=1:n
    s=0;
 for j=1:i
     s=s+L(i,j)*Y(j);
 end
   Y(i)=(B(i)-s)/L(i,i);
end
end