clear all; close all; clc; format long

% COPY AND PAST the following to Command Window
%% Example 1: Bisection Method 
>>func = @(x) x.^3 - 30 * x.^2 + 2552;
>> a = 0; b = 20;
>> fa = func(a); fb = func(b);
>> atol = 1e-8;

>> [ x, n ] = bisect( func, a, b, fa, fb, atol )
>> nexp = ceil( log2( 0.5 * ( b-a ) / atol ) )

>> x
>> n
>>nexp

%% Example 2: Fixed Point Iteration Method 
%%  f(x) = x + ln(x)

>>x = linspace(0.1,1,101);
>>func = @(x) x + log(x);
% Plot the function and see localize the roots of the function f

% Perform fixed point iterations:
% gfunc = @(x) -log(x);                         % choice 1
% gfunc = @(x) exp(-x);                        % choice 2
% gfunc = @(x) 0.5 * ( x + exp(-x) );     % choice 3

>>gfunc = @(x) exp(-x);   

>>x0 = 0.8; atol = 1e-10; nmax = 100;
>>[ x, k ] = fixed_point( gfunc, x0, atol, nmax );
 
>>format long 
>>x
>>k




%% Example 3: Newton Method 

>>f = @(x)  x.^2 - 2;
>>df = @(x) 2*x;

>>[x,k, fout, xout] = newton(f, df, 1, 1e-8, 100);

>>x
>>k
>>fout
>>xout




%% Example 4: Secant Method  - implement the secant method in MATLAB
>>func = @(x) x+log(x);
>> x0 = 0.5; x1 = 0.6; atol = 1.e-10; nmax = 100;
>> [ xstar, k, fout ] = secant( func, x0, x1, atol, nmax );
