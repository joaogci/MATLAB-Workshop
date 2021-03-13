% Exercicios 1ª sessão Workshop de MATLAB
clear
%%
%{
Corra a seguinte secção de código (Ctrl + enter ou então "Run Section" no
tab com o nome EDITOR); As variáveis e os seus valores ficam armazenadas
na Workspace; Para visualizar uma variavel double-click em cima do nome da
mesma; Descomente o comando whos para verificar o tipo de cada variavel; o
output deste comando será visivel na Command Window
%}

v1 = 1;
v2 = "abc";
v3 = [1 2 3];
v4 = [1 2 3; 3 2 1];
v5 = 1 + 1i;
%whos

% Utilizando função clear apague as variaveis v2 e v3
clear v2 v3 % para fazer

% Altere o argumento da função clear de forma a apagar todas as variaveis da
% Workspace; O que acontece se não passar nenhum argumento?

%% Vetores
clear

%{
Em MATLAB existem 3 formas de representar um vetor:
   - Descretizar os valores
   - inicio:passo:fim
   - Utilizando a função linspace(inicio, fim, n_valores)
A partir desta informação recrie o seguinte vetor:
%}

vector = [0 10 20 30 40 50];
vector1 = 0:10:50; % para fazer
vector2 = linspace(0, 50, 6); % para fazer

% Verifique, na Workspace, se vector1 e vector2 são iguais a vector.
% O que altera se colocar ";" entre os valores da variavel vector?

%% Matrizes
clear

%{
Tal como para vetores, existem varias maneiras de representar uma matriz:
    - Descretizar os valores
    - Juntar n vetores com o mesmo numero de elementos
    - E varias funções tais como as que apresentamo nos slides
%}

A = [8     1     6;
     3     5     7;
     4     9     2];

% A partir da função magic reproduza a matriz A

m = magic(3); % para fazer

% Obtenha a transposta da matriz m

mT = m'; % para fazer

% Da matriz m e a sua transposta construa uma outra matriz de maior dimensão

M = [m,mT]; % para fazer

% Da função size ou length obtenha o valor da maior dimensão da matriz M

maior_dim = length(M); % para fazer

% Qual o número de elementos da matriz M; "prod" aparece sublinhado a
% vermelho, faça a correção e verifique o resultado

n_elementos = prod(size(M)); % para fazer

% Atribua à variavel el o valor da matriz M que se encontra na 3 coluna,
% linha 2; Qual o primeiro elemento da matriz? Qual o último?

el = M(2,3); % para fazer
el_one = M(1,1); % para fazer
el_last = M(end,end); % para fazer

% Crie uma matriz de elementos pseudo aleatórios de dimensão 20x20
rng(42) % esta função permite obter os mesmos valores da funcão randi 
%independetemente do número de vezes que o programa é executado (seed)

random = randi(20,20);

% Através desta matriz extraia os elementos de 15 a 20 da coluna 7; obtenha o
% mesmo resultado através de um vetor

%vector = [15:20] % para fazer
v = random(15:20,7); % para fazer

% Construa um vetor com os elementos da matriz random maiores que 15

v_maior_15 = random(random > 15); % para fazer

%% Aritmética de Matrizes
clear v_maior_15 v random el_last el_one el n_elementos maior_dim M A

% Operações entre m e a sua transposta

mult = m*mT;
div = m/mT;
squared = m^2;

% o que alterava nas operações anteriores para serem feitas elemento a
% elemento?

% obtenha de 3 maneiras diferentes a matriz twos
twos = [2 2 2 2 2 2;
        2 2 2 2 2 2;
        2 2 2 2 2 2;
        2 2 2 2 2 2;
        2 2 2 2 2 2;
        2 2 2 2 2 2];

twos_1 = zeros(6,6) + 2; % para fazer
twos_2 = 2*ones(6,6); % para fazer
twos_3 = 2*ones(6,6) + zeros(6,6); % para fazer
%% Sistemas de Equações
clear

%{
Considere o seguinte sistema de equações

    4u + 2v - 3w = 10
    7u - 3v      = -4
    5u + 7v + 4w = 9

Escreve as matrizes A e b que lhe permitam obter o valor do vetor [u,v,w]
%}

A = [4     2     -3;
     7     -3     0;
     5     7     4]; % para fazer
 
b = [5; -2; 9]; % para fazer

% Obtenha o vetor [u,v,w]

%x = A\b; % para fazer
%x = inv(A)*b; % para fazer

% Obtenha o mesmo resultado através de uma função built-in ao MATLAB
%x = linsolve(A,b); % para fazer

%% Polinómios 
clear

% Represente os seguintes polinómios
% p(x) = x^5 - 2x^3 + 0.5x^2 - 49x + 2
% q(x) = 2x^4 - 3x^2 + 5x

p = [1 0 -2 0.5 -49 2]; % para fazer
q = [2 0 -3 5 0]; % para fazer

% Calcule as raizes de p(x) e q(x)

raizes_p = roots(p); % para fazer
raizes_q = roots(q); % para fazer

% utilize o comando que permita a multiplicação dos polinomios

mult = conv(p,q); % para fazer

% Tendo em conta as raizes que obteve utilize a função poly de maneira a
% obter de novo os polinomios p e q; Notou alguma diferença entre o
% resultado obtido e os polinomios do enunciado? Compare

new_p = poly(raizes_p); % para fazer
new_q = poly(raizes_q); % para fazer

%% Plots
clear
% Faça um gráfico da função seno no intervalo de [0, 2*pi], com um passo
% de 0.1. A linha do gráfico deve ser a vermelho, com marcadores de 'x'.
close

x = 0:0.1:2*pi; % para fazer
y = sin(x); % para fazer

plot(x, y, 'xr') % para fazer

% Dê plot de duas funções f(x1) = 2 * x1 - 1 e g(x2) = (x2)^2, no mesmo
% gráfico, a primeira com uma linha azul e a segunda com uma linha 
% preta. Para o dominio de f use um vetor de -10 a 10 com um passo de
% 0.1 e para o da g use um vetor de -5 a 5 com 100 pontos.
close

x1 = -10:0.1:10; % para fazer
x2 = linspace(-5, 5, 100); % para fazer

f = 2 * x1 - 1; % para fazer
g = x2 ^ 2; % para fazer

plot(x1, f, 'b') % para fazer
hold on  % para fazer
plot(x2 , g, 'k') % para fazer

% Ou, alternativamente,
% plot(x1, f, 'b',x2, g, 'k')

% Com as funções do exercício anterior faça um subplot onde no gráfico 
% de cima apareça a função g e no de baixo a função f.
close

subplot(2, 1, 1) % para fazer
plot(x2, g, 'k') % para fazer

subplot(2, 1, 2) % para fazer
plot(x1, f, 'b') % para fazer





































