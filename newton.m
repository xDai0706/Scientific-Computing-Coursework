% Define the function and its derivative
f = @(x) x^2 - 7;
f_prime = @(x) 2*x;

% Find the root starting from x0 = 2
[x1, iter1] = func(f, f_prime, 2, 1e-10);
fprintf('Root starting from x0 = 2: %f\n', x1);
fprintf('Number of iterations: %d\n', iter1);

% Find the root starting from x0 = 500
[x2, iter2] = func(f, f_prime, 500, 1e-10);
fprintf('Root starting from x0 = 500: %f\n', x2);
fprintf('Number of iterations: %d\n', iter2);