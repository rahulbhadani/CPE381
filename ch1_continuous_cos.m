%% (C) Rahul Bhadani

f = figure(1);
f.Position =  [ 440   276   947   647];

%% Continuous cosine wave
% time points
t = 0:0.001:50; %fine-grained time points to represent continuous nature of the sinewave
x = sqrt(2)*cos(t.*(pi/2) + (pi/4)); %
plot(t, x, '-', 'Color','#333333', 'LineWidth', 2, 'DisplayName', 'Cosine Wave');
grid on;
grid minor;
ax = gca;
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 16);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
%legend('Location','northeast', 'Interpreter','latex');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
title('Cosine wave', 'Interpreter','latex');
