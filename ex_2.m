% Exercicios 2ª sessão Workshop de MATLAB
clear
%% Plots
%{
    Como vimos na sessão anterior, podemos fazer gráficos através de plots. 
    Podemos também customizar os plots de forma a vermos detalhadamente
    certas secções do gráfico, adicionar legendas aos eixos, dar legendas 
    caso haja muitos gráficos representados, etc..

    Faça o plot das funções no mesmo gráfico:
    f(x) = 4*cos(5*x)
    g(x) = 2*sen(2*x + pi/4), 
    h(x) = cos(x)*sen(x)
    j(x) = 2*cos(x)-3*sen(x)

    onde x é o vetor que começa em -2pi e vai até 2pi com um passo de 0.1.
    Dê uma cor e uma forma diferente a cada gráfico
%}

%x = ...;


%{
    Separe os gráficos das funções descritas a cima, adicione título, nome
    aos eixos e costumize cada um de forma diferente.
%}

%close

%subplot(...)


%   Repita o exercicio anterior atribuindo uma janela a cada gráfico.

%close

%...


%{
    Como já pode ter reparado, existe um ficheiro plot3d.mat neste
    diretorio. Tendo em conta que este ficheiro é composto por 3 variáveis 
    (X,Y,Vnew). Utilize a função load para as descarregar para a sua 
    workspace.
%}
%close 

%load(...);

%{
    Utilize as funções plot3 e mesh para visualizar os seus valores.
    Nota: é recomendado que passe como argumento '.' à função plot3.
%}

%figure(...)

%% Loops e Controlo de Fluxo
close
clear
%{
    Como sabem os principais loops utilizados em linguagens de programação
    são os for e while. Muitas das vezes queremos controlar a forma como
    estes avançam e, portanto, dentro destes loops encontram-se
    condições lógicas através de ifs. 

    Em MATLAB isto também se verifica apenas com uma pequena nuance
    que é a adição da keyword "end" no fim dos loops e dos ifs.
%}

N = 30;
A = zeros(N,N);
row = 1;
column = 1;

for i = 1:numel(A)
    A(row,column) = i;
    column = column + 1;
    if column == N + 1
        row = row + 1;
        column = 1;
    end
end

%{
    Utilizando um ciclo while altere o código anterior de forma a que a
    matriz A seja igual à matriz B
%}

%B = ...

%{
    Sem utilizar um if obtenha uma matriz igual a matriz A e B
%}

%C = ...

%% Funções
clear
addpath("./functions") % este comando dá import das funções que se 
                       % encontram na pasta functions
%{
    Uma função no MATLAB tem a seguinte sintaxe:
    
    function output = my_func(arg1)
        output = arg1 + 1;
    end

    Recrie as variaveis f,g,h e j da seccção de plots utilizando funções
    Nota: Crie um script MATLAB para cada uma
%}

%...

% Crie uma só função que reproduza o output das funções anterior

%...
%% Animações
close
clear

n_voltas = 15;
theta = 0:0.1:n_voltas*2*pi;
r0 = 5;
lambda = 0.02;

%{
    Para consolidar o que aprendeste no workshop vamos passar para 
    exercicios de animações. 

    Crie uma animação de um circulo, em coordenadas polares, 
    onde a expressão do raio é a seguinte:
        r = r0 * exp(-lambda*theta)

    Ajuste os eixos para uma melhor visualização
%}


% ...

%%
close 
clear

%{
    Faça a animação de uma função sinosoidal com argumento x*alfa, onde
    alfa varia de -2.5 a 2.5 com passo de 0.1. Assuma que o dominio da
    função é de 1 a 30 com 200 pontos

    Ajuste os eixos para uma melhor visualização
%}

%...



%%
clear 
close

g = 9.81; % 10
t0 = 0;
dt = 0.1;
tf = 5;
v0 = 20;
theta = 30;
y0 = 10;

%{
    Utilizando as equações de movimento faça a animação de um projétil
    lançado com um ângulo de 30º

    Despreze a resistência do ar :)
%}

% ...