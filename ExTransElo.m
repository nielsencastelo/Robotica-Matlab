%Exemplo de transformações homogêneas.
% Dedução para Transformação de elo
clear all;clc
syms theta alfa a d
Pin=[0 0 0]';
P2=[0; 0; d];
P1=[a; 0; 0];
R1=RotX(alfa)
R2=RotZ(theta)
[~,V1]=TransHom(R1,P1,Pin)
[~,V2]=TransHom(R2,P2,Pin)
V1*V2