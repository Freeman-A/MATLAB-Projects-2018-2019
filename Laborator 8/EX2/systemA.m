function y = systemA(A,B)
E=A';
[ma,na]=size(A);
[mb,~]=size(B);
if(ma==na)
    if(ma==mb)
if(A==E)
    e=pozitiv(A);
    if(e==1)
L=Cholesky(A);
Y = MetSubsDesc(L,B);
Y=Y';
X = MetSubsAsc(L',Y);
n=rank(A);
for i=1:n
    fprintf("x(%i)=%i \n",i,X(i));
end
    else
        disp("A nu e pozitiv definita");
    end
else 
    disp("A nu e simetrica");
end
    else
        disp("A nu e compatibila cu B");
    end
else
    disp("A nu e patratica");
    end
end