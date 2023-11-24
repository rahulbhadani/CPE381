%%(C) Rahul Bhadani
% CPE 381, Homework 1, Question 4.2

syms x
f = abs(cos (x))^3;
% definite integral
int(f, 0, pi)

%% Numerical Integration using trapezoidal rule
x = 0:0.01:pi;
func = abs(cos(x)).^3;
trapz(x, func)
f = figure(1);
plot( x, func);
hold on;
area(x, func, 'FaceColor','g', 'EdgeColor','r');
grid on;
grid minor;
xlim([-0.5, 4.2]);
ylim([-0.5, 1.1]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis

% Plot the line
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('$|\cos(x)|^3$', 'Interpreter','latex');
exportgraphics(f, 'hw01_Q4_1.pdf');