clear
close 
clc

%
% Exemplo 3D plots - Sessão 2
% João Inácio, 20th Mar 2021
%


z = peaks(25);


% Gráfico 1
figure(1)
mesh(z);
title("Gráfico 1")

% Gráfico 2
figure(2)
surf(z);
title("Gráfico 2")

% Gráfico 3
figure(3)
contour(z, 16);
title("Gráfico 3")
