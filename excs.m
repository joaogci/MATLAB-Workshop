% Exercícios


clear
close
clc

%%

% Faça ...
x = 0:10:100;
x = linspace(0, 100, 11);

%%
clear
% Se não souber o que a função randi faz, use 
A = randi(4, 4);
AT = A';

% Element wise
A2 = A .* AT;

% Matrix wise
A3 = A * AT; % Matrix simétrica

% DIF?
A = A.^2
A = A^2

% Aceder ao elemento da 3ª coluna da 2ª linha
a = A(2, 3);
% Altere esse valor para o seu quarta potência
A(2, 3) = A(2, 3)^4;

%%
clear
% Crie uma matrix identidade de dimensão 2x2, usando a função e escrevendo
% manualmente.
A = eye(2);
A = [1, 0; 0, 1];

% Considere a matriz B.
B = randi(4, 3, 2); 
% Qual serão as suas dimensões? Número de elementos? 
% Comprove a sua resposta usando as funções size(), numel().
[xlen, ylen] = size(B);
n_el = numel(B);

% Qual é o primeiro e último elemnto? Elemento da linha 3 e coluna 4?
first = B(1, 1); % B(1)
last = B(end, end); % B(end)

%% 
clear

x = [-1, 2, 3, -2, 0, 3, -5];

% Quais são os indices dos elementos que são maiores que 0. Use indexação
% lógica para tal.
gr_0 = x > 0;

% A que valores coorespondem tais indices? 
gr_0_vec = x(x > 0);

% Ver se um determinado numero existe -> 2 maneiras -> for e logial index

%% usar linsolve -> linsolve() resolver sistema.
clear


%% 
clear

% Considere os vetores, a = (1, 1); b = (1, -1); c = (2, -5). Represente os
% vetores no MATLAB
a = [1, 1];
b = [1, -1];
c = [2, -5];
% Diferença entre usar a = [1, 1] e a = [1; 1]?

% Calcule a sua norma usando a função norm(). Faça "doc norm" na command
% window para ver os parâmetros da função.
...

% Usando a função quiver(), desenhe o vetor c partindo do ponto inicial 
% P = (1, 2). Use "doc quiver" na command window para aprender sobre a
% função.
quiver(1, 2, c(1), c(2), 0, '-b');


%% 
clear
x = linspace(0, 2*pi, 100);
y = sin(x);

figure(1)
plot(x, y, '.-b')


%% 
clear
x = linspace(0, 2*pi, 100);

figure(2)
plot(cos(x), sin(x), '.-b')

%%
clear
A = 2;
x = 0:0.1:24;
lambda = 2;
while lambda < 6.1
    y = A .* cos(2 * pi * x / lambda);
    plot(x, y, 'lineWidth', 3);
    pause(0.3)
    lambda = lambda + 0.1;
end

