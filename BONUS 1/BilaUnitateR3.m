function BilaUnitateR3(p)
X = randn(10000, 3);
if(p~=inf)
y = sum(abs(X).^p,2).^(1/p);
else
    y=max(abs(X),2);
end
Xn = (bsxfun(@times, X, 1./y));
figure; 
scatter3(Xn(:,1), Xn(:, 2), Xn(:, 3), '.');
end

