% (C ) Rahul

plot_function();

%%
t = -30:0.0001:30.0;
x = (1./4).*sinc(t./4);
plot(t,x, 'DisplayName','T0 = 4')
grid on
hold on;
x = (1./8).*sinc(t./8);
plot(t,x, 'DisplayName','T0 = 8')
grid on
hold on;
x = (1./16).*sinc(t./16);
plot(t,x, 'DisplayName','T0 = 16')
grid on
hold on;

legend;
%%

function plot_function()
    t = -2:0.01:2;  % Define the time range
    u = @(t) 1.0 .* (t >= 0);  % Define the unit step function
    r = @(t) t .* (t >= 0);  % Define the ramp function
    x = @(t) r(t) - r(t-1) - u(t-1);  % Define the function x(t)
    plot(t, x(t));  % Plot x(t)
    xlabel('t');
    ylabel('x(t)');
    title('Plot of x(t) = r(t) - r(t-1) - u(t-1)');
    grid on;
end

