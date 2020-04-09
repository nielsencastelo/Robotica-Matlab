% Teste toobox
clear;clc;close all;
l1 = link([0 1 0 0 0]);
l2 = link([0 1 0 0 0]);
r = robot({l1 l2}); % Constroi um robo

drivebot(r);        % Permite modificar os valores das juntas

q  = [0 0];
plot(r,q);      % Desenha o robo r na posição q

% Cria o robo PUMA
puma560;
plot(p560,[0 0 0 0 0 0]);
drivebot(p560);

% Calculando a cinematica direta
fk = fkine(r,[0 pi/2]);
m = transl(fk);

% (0 0),(pi/8 0),(pi/4 0),(3pi/8 0),(pi/2 0), 
% (pi/2 pi/8), (pi/2 pi/4),(pi/2 3pi/8),(pi/2 pi/2),
% (pi/2 5pi/8), (pi/2 3pi/4),(pi/2 7pi/8),(pi/2 pi)

plot(r,[pi/2 7*pi/8]);

% Calculo da cinematica inversa do robo usando método numérico
l1 = link([0 1 0 0 0]);
l2 = link([0 1 0 0 0]);
l3 = link([0 1 0 0 0]);
r = robot({l1 l2 l3});
T = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
Q = [2*pi/3 2*pi/3 2*pi/3];
M = [1 1 0 0 0 1];
ik = ikine(r, T, Q, M); % Retorna a posição das juntas
% T é a matriz de transformação
% Q é a situação atual do robo
% M matriz de mascara

%Calculo do jacobiano para um robo 3R
j0 = jacob0(r,Q); % calcula o jacobiano em relação a base.
jn = jacobn(r,Q); % calcula o jacobiano em relação a ferramenta


