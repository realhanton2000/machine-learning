clear ; close all; clc
Z = -10 : 0.1 : 10;
G = e.^( (Z - 1).^2 / 10 * -1 );
plot(Z', G, '-r;ten;');

hold on;

G = e.^( (Z - 1).^2 / 2 * -1 );
plot(Z', G, '-g;two;');