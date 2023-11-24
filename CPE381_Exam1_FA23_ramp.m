f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:0.0001:5;
x = t;


plot(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis
plot(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');

grid on;
grid minor;
ax = gca;
xlim([-0.5, 2]);
ylim([-0.5, 1.5]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';

title('Ramp Function r(t)', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Midterm1_FA23_Q3.pdf'));