clear
close 
clc

%
% Exemplo Animação 1 - Sessão 2
% João Inácio, 22nd Mar 2021
%


% Fazer uma função sin(x) "andar".

% Dominío
x = -4:0.1:4;

% Valores de y
y = sin(x);

% Ciclo for faz 100 passos da animação, ou 100 frames.
for i = 1:100
    % Começamos por deslocar o nosso dominío original por i.
    x_shifted = x + i;
    % Calcula-mos a função seno nesse intervalo
    y_shifted = sin(x_shifted);
    
    % Fazer-mos o plot da funçao seno no intervalo deslocado, mas no eixo
    % do xx tem de permanecer o x original, uma vez que queremos dar a
    % impressão que é a função seno a "andar". 
    plot(x, y_shifted, '-k')
    drawnow
    pause(0.1)
end


