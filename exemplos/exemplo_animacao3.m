clear
close 
clc

%
% Exemplo Animação 3 - Sessão 2
% João Inácio, 22th Mar 2021
%

% Fazer um ponto rodar numa circunferencia.
% Para tal vamos ter que usar coordenadas polares.
% (x, y) -> (r, theta)
% x = r * cos(theta)
% y = t * sin(theta)

r = 5;
theta = 0:0.01:2 * pi;

x = r * cos(theta);
y = r * sin(theta);


for i = 1:length(x)
    hold off
    plot(x, y, '-k')
    hold on
    axis([-7.5 7.5 -7.5 7.5])
    
    x_point = x(i);
    y_point = y(i);
    
    plot(x_point, y_point, 'or')
    plot([0 x_point], [0 y_point], '-r')
    pause(0.01)
    drawnow
end

