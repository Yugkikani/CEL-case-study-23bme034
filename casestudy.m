% Yug Kikani - Chemical Equilibrium Case Study

clc;
clear;

% Given equilibrium constant
Kc = 4;   % Example value

% Define nonlinear function
f = @(x) Kc*(1 - x)^2 - x;

% Initial guess
x0 = 0.5;

% Solve using fsolve
x = fsolve(f, x0);

% Equilibrium concentrations
A = 1 - x;
B = 1 - x;
C = x;

disp('Equilibrium Concentrations:')
disp(['[A] = ', num2str(A)])
disp(['[B] = ', num2str(B)])
disp(['[C] = ', num2str(C)])