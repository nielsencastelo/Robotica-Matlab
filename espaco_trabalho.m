clear;clc;close all;
% Espaço de trabalho
% Os servos trabalham com variação de 1 grau, o incremento usado é de 0.017
% radianos que é equivalente (0.017 * 180)/pi = 0.9740
% servo 1: -74 a 89
% servo 2: -93 a 67
% servo 3: -82 a 80
syms ang1 ang2 ang3
incre = 0.17;
ang1min = -74*pi/180; ang1max = 89*pi/180;
ang2min = -93*pi/180;  ang2max = 67*pi/180;
ang3min = -82*pi/180; ang3max = 80*pi/180;

cont = 0;
hold on;
for ang1 = ang1min : incre : ang1max
    for ang2 = ang2min : incre : ang2max
        for ang3 = ang3min : incre : ang3max
            cont = cont + 1;
            P = [9.1 * cos(ang1 + ang2 + ang3)+ 7.3 * cos(ang1 + ang2) + 9.6 * cos(ang1); ...
                9.1 * sin(ang1 + ang2 + ang3) + 7.3 * sin(ang1 + ang2) + 9.6 * sin(ang1)];
            disp(cont);
            plot(P(1),P(2),'b.');
            pause(0.05);
        end
    end
end