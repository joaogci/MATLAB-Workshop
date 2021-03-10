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

v_maior_15 = random(random > 15);

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

twos_1 = zeros(6,6) + 2;
twos_2 = 2*ones(6,6);
twos_3 = 2*ones(6,6) + zeros(6,6);
%% Sistemas de Equações
clear

%{
Considere o seguinte sistema de equações

    4u + 2v - 3w = 10
    7u - 3v      = -4
    5u + 7v + 4w = 9
%}

A = [4     2     -3;
     7     -3     0;
     5     7     4];
 
b = [5; -2; 9];

%x = A\b;
%x = inv(A)*b;

% Obtenha o mesmo resultado através de uma função built-in ao MATLAB
%x = linsolve(A,b);

%% Polinómios 
clear

% Represente os seguintes polinómios
% p(x) = x^5 - 2x^3 + 0.5x^2 - 49x + 2
% q(x) = 2x^4 - 3x^2 + 5x

p = [1 0 -2 0.5 -49 2];
q = [2 0 -3 5 0];

% Calcule as raizes de p(x) e q(x)

raizes_p = roots(p);
raizes_q = roots(q);

% utilize o comando que permita a multiplicação dos polinomios

mult = conv(p,q);

% Tendo em conta as raizes que obteve utilize a função poly de maneira a
% obter de novo os polinomios p e q; Notou alguma diferença entre o
% resultado obtido e os polinomios do enunciado? Compare





















