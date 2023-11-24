%% (C) Rahul Bhadani
numerator = [1 6 7];
denominator = [1 3 2];
sys = tf(numerator,denominator);
z = roots(numerator); % zeros
p = roots(denominator); % poles

f = figure(1);
plot(real(z), imag(z), 'bo', 'MarkerSize',15);
hold on;
plot(real(p), imag(p), 'rx', 'MarkerSize',15);
grid on;
grid minor;
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
exportgraphics(f, 'ch3_laplace.png');