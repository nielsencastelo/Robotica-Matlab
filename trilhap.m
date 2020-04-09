
clc
clear

% TrihaP2:

% Tamanho das hastes
l1 =1;
l2 =1;

load trajetorias

% Caminho a ser executado
x=p(1,:);
y=p(2,:);
tam = length(x);
vx=zeros(1,tam);
vy=zeros(1,tam);

% Passos de execu��o
for x1=1:1:21
    plot(x,y,'b')
    axis([-(l1+l2) (l1+l2) -(l1+l2) (l1+l2)])
    grid on
    hold on
    o = planar(l1,l2,p(1,x1),p(2,x1));
    pause(0.1)
    hold off
    
   vx(x1)= o(1);
   vy(x1)= o(2);
end

