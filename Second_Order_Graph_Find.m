clear all;
clc;

s = tf('s');

ymax = 2.4;
yfinal = 1.75;
k = yfinal / 1
Mp = (ymax - yfinal) / yfinal
tp = 0.8;
xi = (-log(Mp)) / (sqrt(pi^2 + log(Mp)^2))
wn = pi / (tp * sqrt(1 - xi^2) )
te = 3 / (wn * xi)

G = (k*wn^2) / (s^2 + 2*xi*wn*s + wn^2) 

step(G)