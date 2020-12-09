clear ; close all; clc
Z = -10 : 0.1 : 10;
G = 1 ./ (1 + e.^-Z);
plot(Z', G, '-');