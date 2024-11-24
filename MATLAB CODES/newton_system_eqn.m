F=@(x)[3*x(1)-cos(x(1)*x(2))-0.5,];
J=@(x)[2*x(1),2*x(2);2*x(1),2*x(2)];
tol=1e-4;
x=[1;1];
n=10;
for i=1:n
    y=-inv(J(x))*F(x);
    x=x+y;
    if norm(y)<tol
        break
    end
end
disp(x);
