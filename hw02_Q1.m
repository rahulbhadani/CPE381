%% (C) Rahul Bhadani
% Define the time values
%%
t_end = 4;
t_start  = 0;
t = t_start:1:t_end;
x = (3.*t)./4;
f = figure(1);
f.Position = [680   492   593   470];
plot(t, x, 'Color', '#6f1d1b', 'LineWidth',3);
hold on;
grid on;
xlim([-3, 7]);
ylim([-2, 6]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
x1 = [4 4];
y1 = [0 3];

% Plot the line
plot(x1, y1, 'Color', '#6f1d1b', 'LineWidth',3); % 'b-' specifies a blue line, 'o' specifies circles at the data points
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('x(t)', 'Interpreter','latex');
exportgraphics(f, 'hw02_Q1.pdf');

%%
f2 = figure(2);
f2.Position = [658   111   912   754];
subplot(3,3, 1);
tau = 2;
t = t_start+tau:1:t_end+tau;
x2 = (3.*(t-2))./4;
plot(t, x2, 'Color', '#6f1d1b', 'LineWidth',3);
hold on;
grid on;
grid minor
xlim([-3, 7]);
ylim([-2, 6]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
x = [4+tau 4+tau];
y = [0 3];

% Plot the line
plot(x, y, 'Color', '#6f1d1b', 'LineWidth',3); % 'b-' specifies a blue line, 'o' specifies circles at the data points
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('x(t-2)', 'Interpreter','latex');

subplot(3,3, 2);
t_end = 4;
t_start  = 0;
k =2;
t = t_start:1:(t_end/k);

x2 = (3.*(2.*t))./4;
plot(t, x2, 'Color', '#6f1d1b', 'LineWidth',3);
hold on;
grid on;
grid minor
xlim([-3, 7]);
ylim([-2, 6]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
x = [4/k 4/k];
y = [0 3];

% Plot the line
plot(x, y, 'Color', '#6f1d1b', 'LineWidth',3); % 'b-' specifies a blue line, 'o' specifies circles at the data points
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('x(2t)', 'Interpreter','latex');

subplot(3,3, 3);
t_end = 4;
t_start  = 0;
k =2;
t = t_start:1:(t_end*k);

x2 = (3.*(t./2))./4;
plot(t, x2, 'Color', '#6f1d1b', 'LineWidth',3);
hold on;
grid on;
grid minor
xlim([-3, 14]);
ylim([-2, 6]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
x = [4*k 4*k];
y = [0 3];

% Plot the line
plot(x, y, 'Color', '#6f1d1b', 'LineWidth',3); % 'b-' specifies a blue line, 'o' specifies circles at the data points
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('x(t/2)', 'Interpreter','latex');

subplot(3,3,5);
t_end = 4;
t_start  = 0;
k =-1;
t = 0:1*k:t_end*k;

x2 = (3.*(t.*k))./4;
plot(t, x2, 'Color', '#6f1d1b', 'LineWidth',3);
hold on;
grid on;
grid minor
xlim([-6, 3]);
ylim([-2, 6]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
x = [4*k 4*k];
y = [0 3];

% Plot the line
plot(x, y, 'Color', '#6f1d1b', 'LineWidth',3); % 'b-' specifies a blue line, 'o' specifies circles at the data points
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('x(-t)', 'Interpreter','latex');

subplot(3,3,6);

x2 = -x2;
plot(t, x2, 'Color', '#6f1d1b', 'LineWidth',3);
hold on;
grid on;
grid minor
xlim([-6, 3]);
ylim([-6, 2]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
x = [4*k 4*k];
y = [0 -3];

% Plot the line
plot(x, y, 'Color', '#6f1d1b', 'LineWidth',3); % 'b-' specifies a blue line, 'o' specifies circles at the data points
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('-x(-t)', 'Interpreter','latex');

exportgraphics(f2, 'hw02_A1.pdf');