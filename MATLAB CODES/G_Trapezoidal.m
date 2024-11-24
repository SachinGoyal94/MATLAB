format short

f = @(x) 1/(1+x);

a = input('enter the lower limit a: ');
b = input('enter the upper limit b: ');
n = input('enter the number of subintervals');
h = (b-a)/n;
sum = 0;
for i=1:n-1
    
    sum = sum + f(i*h + a);
end

answer = h/2*(2*sum + f(a) + f(b));

answer