function ok = pozitiv(A)
eig_A = eig(A);
ok = 1;
for i = 1:rank(A)
  if (eig_A(i) <= 0) 
  ok = 0;
  end
end
end