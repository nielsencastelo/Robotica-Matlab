% Cinematica direta
% Determinar a posi��o e orienta��o da extremidade da ponta do robo a
function p = cinematica_direta(L1,L2,th1,th2)
    % partir das articula��es e os parametros geom�tricos do robo

    % Considere um robo onde as variaveis rotacionais  theta1 e theta2 variam
    % uniformemente entre 0 � pi/2 e que L1 e L2 = 1
    px = L1*cos(th1)+L2*cos(th1+th2);
    py = L1*sin(th1)+L2*sin(th1+th2);
    p = [px; py];
end
 