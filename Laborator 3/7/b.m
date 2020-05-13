x=input("x=");
y=input("y=");
z=x+y;
z1 = num2str(z);
len=numel(char(z1));
num=0;
pow=1;
for i=len-1:-1:1
    if (z1(i) == '3')
    fprintf("Error \n");
    end
    if (z1(i) > '3')
    fprintf("Error \n");
    end
    num = num + ( z1(i) - '0' ) * pow;
    pow = pow * 3;
end
fprintf("Numarul este %d \n", num);

