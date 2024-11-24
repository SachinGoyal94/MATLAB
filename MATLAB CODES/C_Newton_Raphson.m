format short
syms x
f = @(x) x*log10(x)-1.2;
df=diff(f,x);
dfx=inline(df);
x0=1.5;
n=4;
epsilon = 5*10^(-n-1);
iter=0;
err=abs(f(x0));
if(dfx(x0)<10^(-9))
    fprintf("wrong input value of x0")
else
    while(err>epsilon)
        x1=x0-f(x0)/dfx(x0);
        iter=iter+1;
        err=abs(f(x1));
        x0=x1;
    end
end
fprintf("value of root is %f \n",x0);
fprintf("no of iterations is %1.0f \n",iter);