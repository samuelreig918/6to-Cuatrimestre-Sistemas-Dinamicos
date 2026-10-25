clear all;
clc;

s = tf('s');

xi = 0.4;
K = 50;
wn = 8;
zero = 20*s^2 + 20*s;

G = (zero + K*wn^2) /(s^2 + 2*xi*wn*s + wn^2);
step(G);
hold on;


wd =  wn * sqrt(1 - (xi)^2)
te = 3 / (xi*wn)
Mp = exp(-((xi) * pi) / sqrt(1 - (xi)^2)) 
Polo_real = -xi*wn
Polo_img = wn * sqrt(1 - (xi)^2)
try_real = exp(-Polo_real)
try_img = exp(Polo_img)




