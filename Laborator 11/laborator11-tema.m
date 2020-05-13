%EX3
%a
syms x P(x)
P(x)=(x+2)*(x+0.5)*(x-2)*(x-4.5);
y=simplify(P(x));

fprintf("Polinomul ce are solutiile %i, %0.1f, %i, %0.1f este %s\n",-2,0.5,2,-4.5,y); 
%b
syms x P(x)
P(x)=x^6-(6.5)*(x^5)-58*(x^4)+167.5*(x^3)+728*(x^2)-890*x-1400;
e=simplify(P(x));
fprintf("Solutiile ecuatiei %s sunt:\n",P(x));
disp(solve(e));
%c
syms x P(x) y
P(x) = 4*sin(x)*cos(x)-8*(sin(x))^3*cos(x);
e=simplify(P(x));
fprintf("Ecuatia %s demonstrat ca %s\n",P(x),e);
P(x)=0.5*(cos(x-y)+cos(x+y));
e=simplify(P(x));
fprintf("Ecuatia %s demonstrat ca %s\n",P(x),e);