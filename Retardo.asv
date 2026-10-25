clear all
clc;
load Experimento.mat
dy=yreal-3;
du=ureal-0.5;
plot(T,[du dy])
grid on, legend('u (inc)','y (inc)');
% Moverle estos 3
Tau=1.2;
K= 1.4;
R=2.5;
s=tf('s');
G=K*1/(Tau*s+1)*exp(-R*s);
hold on
step(G)