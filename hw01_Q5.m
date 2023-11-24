%% (C) Rahul Bhadani
% % CPE 381, Homework 1, Question 5

%% ty; + 3y = 0; y(1) = 2
% solution y = 2/t^3
syms y(t)
eqn = diff(y, t) + 3*y/t ==0;
cond = y(1) == 2;
y(t) = dsolve(eqn, cond);
y(t)