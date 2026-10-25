clear all;
clc;
close all;

s = tf('s');

% First Figure: Varying tau
figure;
hold on;
grid on;
for tau = 1:2:11
    FT = 1 / (tau*s + 1);
    step(FT);
end
title('Step Response for Varying \tau');

% Second Figure: Varying a
figure;
hold on;
grid on;
for a = 1:2:11
    FT = 1 / (s + a);
    step(FT);
end
title('Step Response for Varying a');

% Simulation using lsim
t = 0:0.1:10;
u = 0:0.1:10; % Ramp input

figure;
lsim(FT, u, t); % Uses the last FT defined (or replace FT with your desired system)
grid on;
title('Linear Simulation Response');