function [x,y] = GenerateDatasetY(P)
    x = linspace(0,5,P);
    y =x .* cos(x).* exp(-x);
end