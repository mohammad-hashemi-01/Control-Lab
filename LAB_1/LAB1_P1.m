%%
%1
clc
clear
close all
s=tf('s');

G1 = 2/(s+4);
G2 = 2/(s-4);
G3 = 2/(s^2+16);

pzplot(G1)
figure
pzplot(G2)
figure
pzplot(G3)
%%
%2
figure
step(G1)
figure
step(G2)
figure
step(G3,5)
%%
%3
t = 0 : 0.01 : 10;
u = 3*sin(5*t);

figure
lsim (G1,u,t)

figure
lsim (G2,u,t)

figure
lsim (G3,u,t)
%%
%4
t = 0 : 0.01 : 50;
u = 3*sin(4*t);

figure
lsim (G3,u,t)
