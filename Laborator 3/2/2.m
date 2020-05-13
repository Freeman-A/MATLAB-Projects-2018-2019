clear();
k = input('k=');
s=0;
for i=0:k
    s=s+1/(3^i);
end
f = 10.^1;
s = round(f*s)/f;
if(s==1.5)
disp("In urma programului am demonstrat ca s este:");
disp(s);
end
clear();