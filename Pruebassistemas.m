clear all;
clc;

a = 2;
K = 4;
T = 3;

s = tf('s');

H = K/(T*s+a)
figure;
step(H)
hold on;



