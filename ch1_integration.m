%% (C) Rahul Bhadani
%% Symbolic Integration
% x^3/(x + 2) dx

syms x
f = x^3/(x + 2)

% indefinite integral
int(f)

% definite integral
int(f, 0, 10)

%% Numerical Integration using trapezoidal rule
x = 0:0.1:10;
f = x.^3./(x + 2);
trapz(x, f)