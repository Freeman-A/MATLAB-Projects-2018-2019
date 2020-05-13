function Y = MetSubsDesc(L,B)
%Copyright (C) Andreas Mihalea
%Rezolvarea sistemului de ecuatii intr-un mod extrem de eficient
%a unei matrici superior triunghiulare.
n=rank(L);
Y=B;
for i=2:n
 for j=i:n
     Y(j, :) = Y(j, :) - L(j,i-1) * Y(i-1, :);
end
end