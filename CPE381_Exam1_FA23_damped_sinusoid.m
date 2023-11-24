f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:0.001:10;
x = 10.0*sin(10.*t).*exp(-2.*t);


plot(t, x,'Color','#846242', 'LineWidth', 2);
hold on;
line([0 0], [-10, 10], 'Color', 'red',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', 'red',  'LineWidth', 1);  %y-axis
grid on;
grid minor;
ax = gca;
xlim([0, 4]);
ylim([-10, 10]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
%legend('Location','northeast', 'Interpreter','latex');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';

title('Q2D - A', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Midterm1_FA23_Q2d.pdf'));

%% Option 2

f = figure(2);
f.Position =  [ 286         129        1086         833];

t = 0:0.001:10;
x = 10.0*sin(10.*t).*exp(2.*t);


plot(t, x,'Color','#846242', 'LineWidth', 2);
hold on;
line([0 0], [-10, 10], 'Color', 'red',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', 'red',  'LineWidth', 1);  %y-axis
grid on;
grid minor;
ax = gca;
xlim([0, 10]);
% ylim([-10, 10]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
%legend('Location','northeast', 'Interpreter','latex');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';

title('Q2D - B', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Midterm1_FA23_Q2d_opt2.pdf'));

%% Option 3

f = figure(3);
f.Position =  [ 286         129        1086         833];

t = 0:0.001:10;
x = 10.0*cos(10.*t).*exp(-2.*t);


plot(t, x,'Color','#846242', 'LineWidth', 2);
hold on;
line([0 0], [0, 10], 'Color', 'red',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', 'red',  'LineWidth', 1);  %y-axis
grid on;
grid minor;
ax = gca;
xlim([0, 4]);
% ylim([-10, 10]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
%legend('Location','northeast', 'Interpreter','latex');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';

title('Q2D - C', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Midterm1_FA23_Q2d_opt3.pdf'));

%% Option 4

f = figure(4);
f.Position =  [ 286         129        1086         833];

t = 0:0.001:10;
x = 10.0*sin(10.*t);


plot(t, x,'Color','#846242', 'LineWidth', 2);
hold on;
line([0 0], [0, 10], 'Color', 'red',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', 'red',  'LineWidth', 1);  %y-axis
grid on;
grid minor;
ax = gca;
xlim([0, 10]);
% ylim([-10, 10]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
%legend('Location','northeast', 'Interpreter','latex');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';

title('Q2D - D', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Midterm1_FA23_Q2d_opt4.pdf'));