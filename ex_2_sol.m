% Exercicios 2ª sessão Workshop de MATLAB
clear
%% Plots
%{
    Como vimos na sessão anterior, podemos fazer gráficos através de plots. 
    Podemos também customizar os plots de forma a vermos detalhadamente
    certas secções do gráfico, adicionar legendas aos eixos, dar legendas 
    caso haja muitos gráficos representados, etc..

    Faça o plot das funções 
    f(x) = 4*cos(5*x)
    g(x) = 2*sen(2*x + pi/4), 
    h(x) = cos(x)*sen(x)
    j(x) = 2*cos(x)-3*sen(x)

    onde x é o vetor que começa em -2pi e vai até 2*pi com um passo de 0.1.
%}

x = -2*pi:0.1:2*pi;

f = 4*cos(5*x);
g = 2*sin(2*x + pi/4);
h = cos(x).*sin(x);
j = 2*cos(x)-3*sin(x);

plot(x,f,'-b',x,g,'.r',x,h,'*g',x,j,'ok')
close

%{
    Separe os gráficos das funções descritas a cima, adicione título 
    e costumize cada um de forma diferente.
%}

subplot(2,2,1)
plot(x,f,'-b')
title('f(x)=4cos(5x)')
xlabel('x')
ylabel('f(x)')

subplot(2,2,2)
plot(x,g,'.r')
title('g(x)=2sen(2x+pi/4)')
ylabel('g(x)')
xlabel('x')

subplot(2,2,3)
plot(x,h,'*g')
title('h(x)=cos(x)sen(x)')
ylabel('h(x)')
xlabel('x')

subplot(2,2,4)
plot(x,j,'ok')
title('g(x)=2cos(x)-3sen(x)')
ylabel('g(x)')
xlabel('x')


%   Repita o exercicio anterior atribuindo uma janela a cada gráfico.

close

figure(1)
plot(x,f,'-b')
title('f(x)=4cos(5x)')
xlabel('x')
ylabel('f(x)')

figure(2)
plot(x,g,'.r')
title('g(x)=2sen(2x+pi/4)')
ylabel('g(x)')
xlabel('x')

figure(3)
plot(x,h,'*g')
title('h(x)=cos(x)sen(x)')
ylabel('h(x)')
xlabel('x')

figure(4)
plot(x,j,'ok')
title('g(x)=2cos(x)-3sen(x)')
ylabel('g(x)')
xlabel('x')

close all

%{
    Como já pode ter reparado, existe um ficheiro plot3d.mat neste
    diretorio. Tendo em conta que este ficheiro é composto por 3 variáveis 
    (X,Y,Vnew). Utilize a função load para as descarregar para a sua 
    workspace.
%}

load("plot3d","X","Y","Vnew");

%{
    Utilize as funções plot3 e mesh para visualizar os seus valores.
    Nota: é recomendado que passe como argumento '.' à função plot3.
%}

figure(1)
plot3(X,Y,Vnew,'.')
figure(2)
mesh(X,Y,Vnew)

%% Controlo de fluxo

