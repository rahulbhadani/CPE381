%% (C) Rahul Bhadani
% Define the time values
%%


u = @(t) double(t>=0);
h = @(t) u(t)-u(t-2);
f = figure(1);
f.Position = [779, 8, 1051, 954];
subplot(3, 2, 1)
fplot(h, [0, 4], 'Color', '#6f1d1b', 'LineWidth',3);
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
title('x(t)', 'Interpreter','latex');


subplot(3, 2, 2)
t = -0.002:0.001:0.002;
impulse = t==0;
plot(t, impulse, 'Color', '#6f1d1b', 'LineWidth',3);
hold on;
t = -0.002:0.001:0.002;
t = t + 2;
impulse = t==2;
plot(t, -impulse, 'Color', '#6f1d1b', 'LineWidth',3);

grid on;
grid minor;
xlim([-0.5, 4.2]);
ylim([-1.5, 1.5]);
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
title("x'(t)", 'Interpreter','latex');


subplot(3, 2, 3);
u = @(t) double(t>=0);
h = @(t) t*(u(t)-u(t-2));
fplot(h, [0, 4], 'Color', '#6f1d1b', 'LineWidth',3);

grid on;
grid minor;
xlim([-0.5, 4.2]);
ylim([-0.5, 2.5]);
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
title("y(t)", 'Interpreter','latex');


subplot(3, 2, 4);
u = @(t) double(t>=0);
h = @(t) (u(t)-u(t-2)) - 2*(t==2);
fplot(h, [0, 4], 'Color', '#6f1d1b', 'LineWidth',3);

grid on;
grid minor;
xlim([-0.5, 4.2]);
ylim([-3.5, 2.5]);
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
title("y'(t)", 'Interpreter','latex');

subplot(3, 2, 5);
z = @(t) sign(t);
fplot(z, [-4, 4], 'Color', '#6f1d1b', 'LineWidth',3);
grid on;
grid minor;
xlim([-5.0, 5.0]);
ylim([-2.1, 2.1]);
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
title("z(t)", 'Interpreter','latex');

subplot(3, 2, 6)
t = -0.002:0.001:0.002;
impulse = t==0;
plot(t, impulse, 'Color', '#6f1d1b', 'LineWidth',3);

grid on;
grid minor;
xlim([-0.5, 0.5]);
ylim([-1.1, 1.1]);
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
title("z'(t)", 'Interpreter','latex');

exportgraphics(f, 'hw02_Q2.pdf');
