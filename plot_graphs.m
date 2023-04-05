% Plot the function and see localize the roots of the function f


%% Example : Plot several graphs
x = linspace(-3,3);

f0 = @(x)x.^2-1.5;
f1 = @(x)x.^2-0.5;
f2 = @(x)x.^2;
f3 = @(x)x.^2+1;

figure;
plot(x,f0(x),'b-','linewidth',2)
hold on;
plot(x,f1(x),'r-','linewidth',2)
hold on;
plot(x,f2(x),'g-','linewidth',2)
hold on;
plot(x,f3(x),'m-','linewidth',2)
hold on;
plot(x,zeros(length(x),1),'-.k','LineWidth',2);
grid on
grid minor
 axis([-3 3 -2 10])
legend('\gamma=0','\gamma=1','\gamma=2','\gamma=3','Location','northeastoutside')
xlabel('$x$','Interpreter','latex'); ylabel('$f(x)$','Interpreter','latex');
title('Graphs of the function f for gamma=0,1,2,3');
print('graph.pdf','-dpdf');  %% prints plot to file





