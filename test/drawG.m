X = [-10:0.01:10];
% sigmoid
Y = 1 ./ (1 + e .^ -X);
plot(X, Y);