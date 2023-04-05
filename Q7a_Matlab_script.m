% syms x ;
% taylor(f,x,'OrderMode','Relative','Order',n) Compute the Taylor polynomial approximation of f about 
%the point x=0 (also known as Maclaurin polynomial)with order n-1, where n has to be a positive integer.

syms x;
taylor(exp(x),x,'OrderMode','Relative','Order',6)

x = -3.0:0.1:3;
f = exp(x);

% pk Taylor polynomial approximation of exp(x) about the point x=0 (that
% is, Maclaurin polynomial)with order k

p0 = 1+0*x;
p2 = 1+x + x.^2/2;
p4 = 1+x+ x.^2/2+ x.^3/6+ x.^4/24;
p6 = 1 + x + x.^2/2 + x.^3/6 + x.^4/24 + x.^5/120 + x.^6/720;

figure;

plot(x,p0,x,p2,x,p4,x,p6,x,f,'b-.','linewidth',2)
grid
legend('\fontsize{8} p0','\fontsize{8} p2', ...
       '\fontsize{8} p4','\fontsize{8} p6', ...
       '\fontsize{8} e^x','Location','northeastoutside')
title('\fontsize{8} Function y=e^x and its Taylor polynomials')

print('graph.pdf','-dpdf');  %% prints plot to file
