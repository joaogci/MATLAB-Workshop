clear
close 
clc

%
% Exemplo 3D plots - Sessão 2
% João Inácio, 22nd Mar 2021
%

n_pnts = 100;

y = zeros(1, 100);
x = linspace(-3, 5, 100);

for i = 1:n_pnts
    y(i) = f(x(i));
end

plot(x, y, '.-')


function y = f(x)
    y = sin(x) * cos(x) + cosh(0.5 * x);
end
