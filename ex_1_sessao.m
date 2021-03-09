% Exercicios 1ª sessão Workshop de MATLAB

%% 
% Corra a seguinte secção de código (Ctrl + enter ou então "Run Section" no
% tab com o nome EDITOR); As variáveis e os seus valores ficam armazenadas
% na Workspace;
% Descomente o comando whos para verificar o tipo de cada variavel; o
% output deste comando será visivel na Command Window

v1 = 1;
v2 = "abc";
v3 = [1 2 3];
v4 = [1 2 3; 3 2 1];
v5 = 1 + 1i;
%whos

% Utilizando função clear apague as variaveis v2 e v3
clear v2 v3

% Altere o argumento da função clear de forma a apagar todas as variaveis da
% Workspace; O que acontece se não passar nenhum argumento?

%% Vetores
clear

% Em MATLAB existem 3 formas de representar um vetor:
%   - Descritar os valores
%   - inicio:passo:fim
%   - Utilizando a função linspace(inicio, fim, n_valores)
% A partir desta informação recrie o seguinte vetor:

vector = [0 10 20 30 40 50];
vector1 = 0:10:50;
vector2 = linspace(0, 50, 6);

% Verifique, na Workspace, se vector1 e vector2 são iguais a vector.
% O que altera se colocar ";" entre os valores da variavel vector?

%vector3 = ...;
%% Matrizes
clear

A = [8     1     6;
     3     5     7;
     4     9     2];

% A partir da função magic reproduza a matriz A

m = magic(3);

% Obtenha a transposta da matriz m

mT = m';

% Da matriz m a sua transposta construa uma outra matriz de maior dimensão

M = [m,mT];

% Da função size ou length obtenha o valor da maior dimensão da matriz M

maior_dim = length(M);

% Qual o número de elementos da matriz M; "prod" aparece sublinhado a
% vermelho, faça a correção e verifique o resultado

n_elementos = prod(size(M));

% Atribua à variavel v o valor da matriz M que se encontra na 3 coluna,
% linha 2; Qual o primeiro elemento da matriz? Qual o último?

el = M(2,3);
el_one = M(1,1);
el_last = M(end,end);

% Crie uma matriz de elementos pseudo aleatórios de dimensão 20x20
rng(42) % esta função permite obter os mesmos valores da funcão randi 
%independetemente do número de vezes que o programa é executado

random = randi(20,20);

% Através desta matriz extraia os elementos 15 a 20 da coluna 7; obtenha o
% mesmo resultado através de um vetor

v = random(15:20,7);

% Construa um vetor com os elementos da matriz random que são maiores que 15

v_maior_15 = random(random > 15);

%% Aritmética de Matrizes
clear v_maior_15 v random el_last el_one el n_elementos maior_dim M A

% Operações entre m e a sua transposta

mult = m*mT;
div = m/mT;
squared = m^2;

% o que alterava nas operações anteriores para serem feitas elemento a
% elemento 