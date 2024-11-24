h=1;
a = 0; % Lower bound
b = 1; % Upper bound

count = 0; % Iteration counter
f = @(x) cos(x)-x * exp(x); % Define the function
epsilon = 5e-5; % Tolerance
while(f(a)*f(b)>0)
    a=a+h; 
    b=b+h;
end
% Check if the initial interval brackets a root
if f(a) * f(b) > 0
    disp('Wrong input: Root is not bracketed within the interval');
else
    p = (a + b) / 2; % Initial midpoint
    error = abs(f(p)); % Initial error
    
    while error > epsilon % Convergence condition
        if  f(a)*f(p) < 0
            b = p; % Root is in [a, p]
        else
            a = p; % Root is in [p, b]
        end
        count = count + 1; % Increment iteration counter
        p = (a + b) / 2; % Recalculate midpoint
        error = abs(f(p)); % Update error
    end
    
    % Display results after convergence
    fprintf("Root approximation: %f\n", p);
    fprintf("Number of iterations: %d\n", count);
end
