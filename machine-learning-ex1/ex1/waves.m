clear ; close all; clc
Z = -10 : 0.1 : 10;
% G = cos(Z');
G = (1 ./ 1.1 .^ (Z' .^ 2)) .* cos(Z') + 1;
plot(Z', G, '-');

