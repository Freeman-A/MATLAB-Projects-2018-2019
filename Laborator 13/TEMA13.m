x = [-5 -3.4 -2 -0.8 0 1.2 2.5 4 5 7 8.5];
y = [4.4;4.5;4;3.6;3.9;3.8;3.5;2.5;1.2;0.5;-0.2];
x2 = x.^2;
x0 = zeros(1,11);
for i=1:11
    x0(i)=1;
end
A = [x2' x' x0'];
[Q,R] = GSmodificat(A);
e = Q'*y;
X=MetSubsAsc(R,e);
disp(X);
figure(1)
c=linspace(-10,10,100);
f = X(1)*(c.^2)+X(2).*c+ X(3);
plot(f);
hold on
scatter(x,y);
line(x,y);