clear
close 
clc

%
% Exemplo figure - Sessão 2
% João Inácio, 20th Mar 2021
%


x1 = 0:0.1:10;
x2 = linspace(-5, 10, 100);

y1 = 2 * x1 - 4;
y2 = cos(2 * x2) + sin(x2);

figure(1)
plot(x1, y1, '-b')

figure(2)
plot(x2, y2, '-r')





