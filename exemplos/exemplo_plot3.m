clear
close 
clc

%
% Exemplo plot3 - Sessão 2
% João Inácio, 20th Mar 2021
%

% Gráfico 1
figure(1)

t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)
title("Gráfico 1")


% Gráfico 2
figure(2)

t = 0:pi/500:pi;
X(1,:) = sin(t).*cos(10*t);
X(2,:) = sin(t).*cos(12*t);
X(3,:) = sin(t).*cos(20*t);

Y(1,:) = sin(t).*sin(10*t);
Y(2,:) = sin(t).*sin(12*t);
Y(3,:) = sin(t).*sin(20*t);

Z = cos(t);

plot3(X,Y,Z)
title("Gráfico 2")


% Gráfico 3
figure(3)

t = 0:pi/500:40*pi;
xt = (3 + cos(sqrt(32)*t)).*cos(t);
yt = sin(sqrt(32) * t);
zt = (3 + cos(sqrt(32)*t)).*sin(t);

plot3(xt,yt,zt)
axis equal
xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')
title("Gráfico 3")

% Gráfico 4
figure(4)

t = linspace(-10,10,1000);
xt = exp(-t./10).*sin(5*t);
yt = exp(-t./10).*cos(5*t);
p = plot3(xt,yt,t);
title("Gráfico 4")





