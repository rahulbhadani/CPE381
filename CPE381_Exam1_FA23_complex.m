f = figure(1);
f.Position =  [ 286         129        1086         833];

z = 6 + 8i;
origin = 0 + 0i;


plot(real(z), imag(z), '.', 'MarkerSize', 50 ,'Color','#846242', 'LineWidth', 2);
hold on;
plot([0, real(z)], [0, imag(z)],'Color','#333333', 'LineWidth', 3);
text(real(z), imag(z) + 0.75, 'z(6, 8)', 'Interpreter','latex', 'FontSize',42);
text(7.5,-0.75, '$\mathcal{R}$e(z)', 'Interpreter','latex', 'FontSize',32);
text(-3, 9.0, '$\mathcal{I}$m(z)', 'Interpreter','latex', 'FontSize',32);
line([0 0], [-10, 10], 'Color', 'red',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', 'red',  'LineWidth', 1);  %y-axis
grid on;
grid minor;
ax = gca;
xlim([-10, 10]);
ylim([-10, 10]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
%legend('Location','northeast', 'Interpreter','latex');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';

title('Midterm 1 -- CPE 381 -- Q2c', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Midterm1_FA23_Q2c.pdf'));