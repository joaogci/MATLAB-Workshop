clear
close 
clc

%
% Exemplo 3D plots - Sessão 2
% João Inácio, 22nd Mar 2021
%

x = 0:0.1:10;
y = sin(x);
plot(x, y, '.-b')

title("Função Seno", "sin(x)")

legend("sin(x)", 'location', "best")

xlabel("x")
ylabel("sin(x)")

