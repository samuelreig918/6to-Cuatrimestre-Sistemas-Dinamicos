clear all;
clc;
syms A K xi omega_n real
assume(0<=xi<1) %par de raíces complejas
assume(omega_n>0) %si no, saldrá inestable...
syms s
Y= A/s * K*omega_n^2/(s^2+2*xi*omega_n*s+omega_n^2)
syms t real
Y(t)=simplify(ilaplace(Y))
velo=simplify(diff(Y,t))
solve(velo==0,t,"ReturnConditions",true)
 