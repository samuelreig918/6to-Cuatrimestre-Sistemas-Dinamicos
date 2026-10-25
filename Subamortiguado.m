clear all;
clc;
s=tf('s');
b=10:-1:1;
for i=1:length(b)
TF=1/(s^2+b(i)*s+9);
step(TF)
hold on;
grid on;
end
 