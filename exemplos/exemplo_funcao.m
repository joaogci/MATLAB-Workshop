clear
close 
clc

%
% Exemplo função - Sessão 2
% João Inácio, 22nd Mar 2021
%

n_pnts = 100;

y = zeros(1, n_pnts);
x = linspace(-3, 5, n_pnts);

for i = 1:n_pnts
    y(i) = f1(x(i));
end

figure(1)
plot(x, y, '.-')

[y1, y2] = f2(x);

figure(2)
plot(x, y1, '-r')
hold on
plot(x, y2, '-k')

figure(3)
y = func(x);
plot(x, y, '-m')


function y = f1(x)
    y = sin(x) * cos(x) + cosh(0.5 * x);
end


function [y1, y2] = f2(x)
    y1 = sin(x) .* cos(x) + cosh(0.5 * x);
    y2 = sin(x) .* exp(0.25 * x);
end
