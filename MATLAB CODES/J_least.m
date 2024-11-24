% Input data
x = [-2, -1, 0, 1, 2];
y = [5, 1, 1, 3, 19];

% Initialize variables
n = length(x);
sumyi = 0;
sumxi = 0;
sumxis = 0;
sumxiyi = 0;

% Loop through the data points to calculate sums
for i = 1:n
    sumyi = sumyi + y(i);
    sumxi = sumxi + x(i);
    sumxis = sumxis + x(i)^2;
    sumxiyi = sumxiyi + x(i) * y(i);
end

% Construct matrix A and vector B for solving the equation A * [b; m] = B
A = [n, sumxi; sumxi, sumxis]
B = [sumyi; sumxiyi]

% Solve for [b; m]
coeff = A \ B

% Extract results
b = coeff(1); % Intercept
m = coeff(2); % Slope

% Display results
disp('Intercept (b):');
disp(b);
disp('Slope (m):');
disp(m);