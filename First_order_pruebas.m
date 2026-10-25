clear all;
clc;

s = tf('s');

cero = 8*s^2+2;
k = 1;
t = 1;
a = 1;

G = cero * (k/(t*s + a))
step(G);
hold on