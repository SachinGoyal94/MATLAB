format short
x = [0, 0.25, 0.5, 0.75];
y = [1, 1.64872, 2.71828, 4.4816];
n = length(x);
P = 0.43;

DD = zeros(n, n);
for i = 1:n
    DD(i, 1) = y(i);
end

for j = 2:n
    for i = j:n
        DD(i, j) = (DD(i, j-1) - DD(i-1, j-1)) / (x(i) - x(i-j+1));
    end 
end

sum = DD(1, 1);
product_term = 1;

for j = 2:n
    product_term = product_term * (P - x(j-1));
    sum = sum + (DD(j, j) * product_term);
end

fprintf('Approximation of f(%.2f) is: %.5f\n', P, sum);
