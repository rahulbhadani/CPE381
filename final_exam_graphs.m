t = 0:0.0001:6;

x = heaviside(t) - heaviside(t - 1);

for k = 1:4
    x = x+ (heaviside(t-k) - heaviside(t - k - 1)).*(k+1);
end
plot(t, x);
ylim([-2, 10]);
xlim([-0.5, 7]);


%%
figure(2);
y = cos(2*pi*t).*heaviside(t) + cos(2*pi*(t-0.5)).*heaviside(t-0.5);
plot(t, y);
ylim([-1.01, 1.01]);
xlim([-0.5, 0.5]);

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:0.0001:5;
%x = t.*( heaviside(t) - heaviside(t - 1)) +(-t+2).*( heaviside(t-1) - heaviside(t - 2));
x = t.*( heaviside(t) - heaviside(t - 1))  + (t-1).*( heaviside(t-1) - heaviside(t - 2));


plot(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 2.1]);
ylim([-0.5, 1.1]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Time (t)', 'Interpreter','latex');
ylabel('p (t)', 'Interpreter','latex');

title('Q3.2 Question 1', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_2_1.pdf'));

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:0.0001:10;
%x = t.*( heaviside(t) - heaviside(t - 1)) +(-t+2).*( heaviside(t-1) - heaviside(t - 2));
x = 4.*heaviside(t) - 3.*heaviside(t-5);


plot(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 10]);
ylim([-0.5, 10]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Time (t)', 'Interpreter','latex');
ylabel('q (t)', 'Interpreter','latex');

text(6,1.25, 'Extends to the $\infty$', 'Interpreter','latex', 'FontSize',28)
title('Q3.2 Question 2', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_2_2.pdf'));

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:0.0001:10;
x = abs(cos(t));


plot(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 10]);
ylim([-0.5, 2.0]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Time (t)', 'Interpreter','latex');
ylabel('m (t)', 'Interpreter','latex');

text(6,1.25, 'Extends to the $\infty$', 'Interpreter','latex', 'FontSize',28)
title('Q3.2 Question 3', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_2_3.pdf'));

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:1:10;
x = heaviside(t)  - heaviside(t-5) ;
x(1) = x(1) + 0.5;
x(6) = x(6) - 0.5;

stem(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 10]);
ylim([-0.5, 2.0]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Sample index [n]', 'Interpreter','latex');
ylabel('g [n]', 'Interpreter','latex');

title('Q3.2 Question 4', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_2_4.pdf'));

%%
%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:1:10;
% Define the Kronecker delta function
delta = @(n) n == 0;

x = delta(t) + delta(t-1) + delta(t-6);


stem(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 10]);
ylim([-0.5, 2.0]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Sample index [n]', 'Interpreter','latex');
ylabel('f[n]', 'Interpreter','latex');

title('Q3.2 Question 5', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_2_5.pdf'));

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:1:10;
x = heaviside(t)  - heaviside(t-5) ;
x(1) = x(1) + 0.5;
x(6) = x(6) - 0.5;

stem(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 10]);
ylim([-0.5, 2.0]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Sample index [n]', 'Interpreter','latex');
ylabel('a [n]', 'Interpreter','latex');

title('Q3.1-1', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_1_1.pdf'));


%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:1:12;
x = heaviside(t)  - heaviside(t-3) ;
x(1) = x(1) + 0.5;
x(4) = x(4) - 0.5;

x = 3.*x;
x(6:11) = 1;
stem(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 15]);
ylim([-0.5, 5.0]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Sample index [n]', 'Interpreter','latex');
ylabel('b [n]', 'Interpreter','latex');

title('Q3.1-2', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_1_2.pdf'));

%%
%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:1:12;
x = zeros(size(t));
x(1) = 0;
x(2) = 1;
x(3) = 2;
x(4) = 3;
x(5) = 4;
x(6) = 5;



stem(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 15]);
ylim([-0.5, 5.0]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Sample index [n]', 'Interpreter','latex');
ylabel('c [n]', 'Interpreter','latex');

title('Q3.1-3', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_1_3.pdf'));

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

n = 0:1:10;

% Define the unit-step function
u = @(n) double(n >= 0);

% Initialize the result
d = zeros(size(n));

% Calculate the sum
for k = 1:4
    d = d + (u(n-k) - u(n-k-1))*(k+1);
end

stem(n, d,'Color','red', 'LineWidth', 2, 'LineStyle','--');

hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 10]);
ylim([-0.5, 7.0]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Sample index [n]', 'Interpreter','latex');
ylabel('d [n]', 'Interpreter','latex');

title('Q3.1-4', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_1_4.pdf'));

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = 0:0.0001:10;
x = sin(2*pi*t).*heaviside(t)  + sin(2*pi*(t-0.5)).*heaviside(t-0.5);


plot(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-0.5, 0.6]);
ylim([-0.5, 1.1]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Time (t)', 'Interpreter','latex');
ylabel('e (t)', 'Interpreter','latex');

title('Q3.1-5', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q3_1_5.pdf'));

%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

t = -10:0.0001:10;
a = 3.0;
x = heaviside(t + a) - heaviside(t - a);

plot(t, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-4.5, 4.5]);
ylim([-0.5, 1.1]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Time (t)', 'Interpreter','latex');
ylabel('p (t)', 'Interpreter','latex');
text(3.1,-0.1, 'a', 'Interpreter','latex', 'FontSize',28)
text(-3.1,-0.1, 'a', 'Interpreter','latex', 'FontSize',28)

title('Q4', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q4.pdf'));


%%
f = figure(1);
f.Position =  [ 286         129        1086         833];

w = -10:0.0001:10;
a = 3.0;
x = (2./w).*sin(a.*w);

plot(w, x,'Color','red', 'LineWidth', 2, 'LineStyle','--');
hold on;
t = -1:0.01:0;
x = zeros(1, length(t));
hold on;
line([0 0], [-10, 10], 'Color', '#555555',  'LineWidth', 1);  %x-axis
line([-10, 10], [0 0], 'Color', '#555555',  'LineWidth', 1);  %y-axis

grid on;
grid minor;
ax = gca;
xlim([-4.5, 4.5]);
ylim([-5.5, 10.1]);
ax.GridColor = [130, 130, 130]/255;
set(gca, 'FontSize', 32);
set(gca, 'XColor', [0, 0, 0], 'YColor', [0, 0, 0], 'TickDir', 'out');
xaxis = get(gca, 'XAxis');
xaxis.TickLabelInterpreter = 'latex';
yaxis = get(gca, 'YAxis');
yaxis.TickLabelInterpreter = 'latex';
xlabel('Time (t)', 'Interpreter','latex');
ylabel('$P(e^{j\omega})$', 'Interpreter','latex');

title('Q4: Fourier Transform', 'Interpreter','latex');
exportgraphics(f, sprintf('CPE381_Final_FA23_Q4-2.pdf'));
