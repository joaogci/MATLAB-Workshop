clear
close 
clc

%
% Exemplo Animação 2 - Sessão 2
% João Inácio, 22th Mar 2021
%

% Fazer uma função cos(x) decair. 

% Dominío
x = -4:0.1:4;

% Valores de y
y = cos(x);

% Vamos considerar um decaimento exponencial com um fator 
lambda = 0.1;


for i = 1:50
    % Aplicar o decaimento exponencial
    y_dec = y * exp(- lambda * i);
    
    % Fazer o plot
    plot(x, y_dec, '-k')
    % É preciso delimitar os eixos pois estes acompanham o tamanho da
    % função, então não iriamos ver a animação.
    ylim([min(y) max(y)])
    drawnow
    pause(0.1) 
end


% Fazer esta animação "andar"

for i = 1:50
    % Deslocar os valores de x
    x_shifted = x + i;
    % Calcular o valor de y deslocado e aplicar o decaimento
    y_dec_shifted = cos(x_shifted) * exp(- lambda * i);
    
    % Fazer plot
    plot(x, y_dec_shifted, '-k')
    ylim([min(y) max(y)])
    drawnow
    pause(0.1) 
end

