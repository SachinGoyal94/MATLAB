format short 
f=@(x) asin(-x/2)/pi;  % x=f(x) form 
n=20;
x0=1;  % any value where f(x) >0 and <0
x1=f(x0);
tol= 0.01;
count=0;
for i=1:n
    if abs(x1-x0)<tol
        break
    end
    x0=x1;
    x1=f(x0);
    count=count+1;
end
fprintf("%f",x1);
disp(count);