function [x, iter] = newton(f, f_prime, x0, tol)

x = x0;
iter = 0;
while true
    fx = f(x);
    fx_prime = f_prime(x);
    x_new = x - fx/fx_prime;
    iter = iter + 1;
    if abs(x_new - x) < tol
        break
    end
    x = x_new;
end
end