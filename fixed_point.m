function [ x, k, res ] = fixed_point( gfunc, x0, atol, nmax )

  xk = rand;                       % Just to start the while loop.
  res = xk - x0;
    k = 0;                            % Iteration index.
    iflag = 0;                        % For stopping purposes.

    while abs(res)>atol
        xk = feval(gfunc,x0); % x_{k+1} = g(x_{k})
        res = xk - x0;
        x0 = xk;
        k = k + 1;
        if(k == nmax) 
            iflag = -1;              % number of iterations!
            break;
        end
    end
    if(iflag==0)                     % On successful exit, return the root!
        k = k + 1;
        x = xk;
    else
        disp(' maximum number of iterations reached!'); 
        x = [];
        k = [];
    end



    format long 
    
x
