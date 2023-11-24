%% (C) Rahul Bhadani

%% Solving differential equations symbolically

% define symbol for differential equation
syms y(t)

%% Equation d^2y/dt^2 + 5 dy(t)/dt +  6 = x(t)
% Setting x(t) = 1 will give unit response, derivative of x as impulse
% response and integration will give ramp response

eqn = diff(y, t, 2) + 5*diff(y, t) + 6*y == 1;
Dy = diff(y, t);
cond = [y(0) == 0, Dy(0) == 0]; % initial condition

% solve the differential eqaution
y(t) = dsolve(eqn, cond);

%impulse response
Dy = diff(y, t);

% ramp response
Iy = int(y, t);

% plot
figure(1)
subplot(3, 1,1)
fplot(y, [0, 5]);
title('Unit-step response'); 
grid on;
subplot(3, 1,2);
fplot(Dy, [0, 5]);
grid on;
title('Impulse response');
subplot(3,1,3);
fplot(Iy, [0, 5]);
grid on;
title('Ramp response');



