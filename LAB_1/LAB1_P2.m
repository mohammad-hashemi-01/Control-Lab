clc
clear
close all

s=tf('s');
%%
%1

G4 = 2.5 / (s + 25);
G5 = 0.25 / (s + 2.5);
G6 = 40 / (s^2 + 4*s + 400);
G7 = 40 / (s^3 + 42*s^2 + 441*s + 400);
figure
step (G4, G5, G6, G7)
figure
pzplot (G4, G5, G6, G7)
%%
%2
G8 = 3 / ((s + 5)*(s + 6));
G9 = -(s - 3)/((s + 5)*(s + 6));
G10= -30 * (s - 0.1)/((s + 5)*(s + 6));

step (G8, G9, G10)
%%
%3
G11 = 4/(s^2 + 2*s + 4); % zeta = 0.5
G12 = 4/(s^2 + 3*s + 4); % zeta = 0.75
G13 = 4/(s^2 + 4*s + 4); % zeta = 1
G14 = 4/(s^2 + 5*s + 4); % zeta = 1.25

step(G11, G12, G13, G14)
%%
G15 = 5 / (s^2 + 2*s + 5);
G16 = 125 / (s^3 + 27*s^2 + 55*s + 125);
G17 = 2045 / (s^4 + 42*s^3 + 494*s^2 + 1018*s + 2045);
figure
step (G15, G16 , G17);
figure
pzplot (G15, G16 , G17);


%%
G18 = 4 / (s^2 + 4*s + 16);
figure
step(G18)
figure
impulse(G18)
