%% (C) Rahul Bhadani
%% Symbolic Integration
% x^3/(x + 2) dx

syms x
f = x^3/(x + 2)

% indefinite integral
int(f)

% definite integral
int(f, 0, 10)

%% Numerical Integration using trapezoidal rule
x = 0:0.1:10;
f = x.^3./(x + 2);
trapz(x, f)

%%
syms x
f = abs(cos (x))^3;
% definite integral
int(f, 0, pi)

%% Numerical Integration using trapezoidal rule
x = 0:0.0001:pi;
f = abs(cos(x)).^3;
trapz(x, f)
plot( x, f);
hold on;
area(x, f, 'FaceColor','g', 'EdgeColor','r');
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
yaxis = get(gca, 'YAxis');'
yaxis.TickLabelInterpreter = 'latex';
title('|cos(x)|^3', 'Interpreter','latex');
