f = figure(1);
f.Position =  [ 286         129        1086         833];

t = -5:0.001:5;
x = heaviside(t)  - heaviside(t - 1);


plot(t, x,'Color','#846242', 'LineWidth', 2);
hold on;
line([0 0], [-10, 10], 'Color', 'red',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', 'red',  'LineWidth', 1);  %y-axis
grid on;
grid minor;
ax = gca;
xlim([-0.5, 2]);
ylim([-0.5, 1.5]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
legend('Location','northeast', 'Interpreter','latex');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';

title('Q2e', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Midterm1_FA23_Q2e.pdf'));