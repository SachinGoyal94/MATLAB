n=4;
x=[110,130,160,190];
f=[10.8 8.1 5.5 4.8];
sum=0;
for i=1:n
    l(i)=1;
    for j=1:n
        if j~=i
            l(i)=l(i)*(140-x(j))/(x(i)-x(j));
        end
    end
    sum = sum + l(i)*f(i);
end
disp(sum);