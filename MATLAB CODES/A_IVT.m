format short
f=@(x) x^3-25;
h=1
a = 0; % Lower bound
b = 1; % Upper bound
while(f(a)*f(b)>0)
    a=a+h;
    b=b+h;
end 
% Display results after convergence
fprintf("Root interval is %f %f\n", a,b)