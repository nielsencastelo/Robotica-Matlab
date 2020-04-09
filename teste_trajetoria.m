clc;
close all;
%Planejamento de trajetória

% Comprimento do link
a2 = 1;
a3 = 1;


% por cinemática inversa temos as variáveis ??comuns
[theta1s,theta2s,theta3s] = inverseAntro(1,0.5,0.3,a2,a3);

% por cinemática inversa temos as variáveis ??conjuntas
[theta1e,theta2e,theta3e] = inverseAntro(0.1,0.5,0.3,a2,a3);

% 3 variáveis ??comuns: 3 trajetórias
% Queremos que o movimento seja concluído em 6 segundos
tstart = 0;
tend = 6;
time = [tstart tend];


% 
% Verifique a cinemática para a direta e as múltiplas soluções inversas
figure(1);
T01 = DHmatrix(theta1s(1),0,0,45);
T12 = DHmatrix(theta2s(1),0,a2,0);
T23 = DHmatrix(theta3s(1),0,a3,0);
Tuh1 = T01*T12*T23;
figure(1);
hold on;
plotT(Tuh1);
T01 = DHmatrix(theta1s(2),0,0,45);
T12 = DHmatrix(theta2s(2),0,a2,0);
T23 = DHmatrix(theta3s(2),0,a3,0);
Tuh2 = T01*T12*T23;
plotT(Tuh2);


%Uma vez que temos a cinemática e caminhos que podemos traçar os movimentos!
%Use uma interpolação spline

pp1 = spline(time,[0 theta1s(1) theta1e(1) 0]);
pp2 = spline(time,[0 theta2s(1) theta2e(1) 0]);
pp3 = spline(time,[0 theta3s(1) theta3e(1) 0]);
time = linspace(tstart,tend);
figure(2);
subplot(3,1,1);
title('Posição Theta1');
plot(time,fnval(pp1,time),'b');
xlabel('Tempo');
ylabel('Theta1');
subplot(3,1,2);
title('Posição Theta2');
plot(time,fnval(pp2,time),'b');
xlabel('Tempo');
ylabel('Theta2');
subplot(3,1,3);
title('Posição Theta3');
plot(time,fnval(pp3,time),'b');
xlabel('Tempo');
ylabel('Theta3');

figure(3);
for k=1:1:length(time)
    clf;
    theta1 = fnval(pp1,time(k));
    theta2 = fnval(pp2,time(k));
    theta3 = fnval(pp3,time(k));
    T01 = DHmatrix(theta1,0,0,45);
    T12 = DHmatrix(theta2,0,a2,0);
    T23 = DHmatrix(theta3,0,a3,0);
    Tuh1= T01*T12*T23;
    plotT(T01);
    plotT2(T01,T01*T12);
    plotT2(T01*T12,T01*T12*T23);
    pause(0.1);
title('Trajetória Arm');
end