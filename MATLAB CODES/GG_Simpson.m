format short
f = @(x) (cos(x) - log(x) + exp(x));
a = input('enter the lower limit of the integral');
b = input('enter the upper limit of the integral');
n = input('enter the number of subintervals');
h = (b-a)/n;
sumOdd = 0;
for i=1:2:n-1
    sumOdd = sumOdd + f(i*h + a);
end
sumEven = 0;
for i=2:2:n-1
    sumEven = sumEven + f(i*h + a);
end
answer = h/3*(2*sumOdd + 4*sumEven + f(a) + f(b));
answer