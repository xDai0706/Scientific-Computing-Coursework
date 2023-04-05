function [p,n] = bisect(func,a,b,fa,fb,atol)
%
% function [p,n] = bisect(func,a,b,fa,fb,atol)
%
% Assuming fa = func(a), fb = func(b), and fa*fb < 0,
% there is a value root in (a,b) such that func(root) = 0.
% This function returns in p a value such that 
%      | p - root | < atol
% and in n the number of iterations required.
% X = NaN returns the scalar representation of "not a number". 
%   Operations return NaN when they have undefined numeric results, 
%   such as 0/0 or 0*Inf.

% check input
if (a >= b) || (fa*fb >= 0) || (atol <= 0)
  disp(' something wrong with the input: quitting');
  p = NaN; n=NaN;
  return
end

n = ceil ( log2 (b-a) - log2 (2*atol));


fprintf('%12s\r\n','                ');
fprintf('%3s %15s %15s\r\n','k','x_k','|f(x_k)|');
fprintf('%12s\r\n','   -------------------------------------');



for k=1:n
  p = (a+b)/2;  %<------ Change Here!
  
  fp = feval(func,  p  );%<------ Change Here!
  absfp=abs(fp);

   fprintf('%2d | %12.8f | %9.3e\n', k, p,absfp);

  if abs(fp) < atol, n = k; 
      return, 
  end
  if fa * fp < 0
    b = p;
  else
    a = p;
    fa = fp;
    
  end
end

disp(' ')
fprintf('The approximated solution is x*= %12.8f\n\n',p);


      


