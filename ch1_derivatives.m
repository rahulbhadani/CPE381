%% (C) Rahul Bhadani
%% Solving derivatives symbolically

% y(t) = cos(t^2)
% dy/dt = -2*t*sin(t^2)

%% Symbolic derivative: the ground truth
syms t y z % we define symbols
y = cos(t^2);

z = diff(y);
figure(1);
subplot(2, 1, 1)
% symbolic plotting
hold on;

subplot(2, 1, 2);
fplot(z, [0, 2*pi], 'LineWidth', 3);
grid on;
hold on;

%% Numerical derivative
Ts  = 0.1;
t1 = 0:Ts:2*pi;
y1 = cos(t1.^2);
z1 = diff(y1)./diff(t1);
figure(1);
subplot(2, 1, 1);
stem(t1, y1, 'r');

subplot(2, 1, 2);
stem(t1(1:length(y1) -1), z1, 'm' );




fplot(y, [0, 2*pi], 'LineWidth', 3);
grid on;