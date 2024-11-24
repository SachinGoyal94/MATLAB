%iterative method
format short 
clear all 
clc 
A = [27 6 -1; 6 15 2; 1 1 54];
b = [85;72;110];
maxerr = 1e-5;
x = zeros(1 , size(A,1));
err1 = Inf; 
itr = 0;
while all(err1 > maxerr)
    x_old = x;
    for i=1:size(A,1)
        sum = 0;
        for j=1:i-1
            sum = sum + A(i,j)*x(j);
        end
        for j=i+1:size(A,1)
            sum = sum + A(i,j)*x_old(j); 
        end
        x(i) = (1/A(i,i))*(b(i) - sum);
    end
    itr = itr + 1;
    y(itr,:) = x;
    err1 = abs(x_old - x);
end
fprintf("method converges in %d iterations",itr);
x