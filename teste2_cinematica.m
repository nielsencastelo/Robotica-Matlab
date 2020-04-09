% Grafico configuração espacial do robo
tha = 0:(pi/2)/20:pi/2;
thb = 0:(pi/2)/20:pi/2;
for i = 1 : 90
    th1 = i * pi/180;
    th2 = i * pi/180; 
    p = cinematica_direta(1,1,th1,th2); 
    [x,y] = robotgraph(L1,th1,p);
    pp = cinematica_direta(1,1,tha,thb);
    plot(pp(1,:),pp(2,:),'r',x,y,'b');
    axis([-2 2 -2 2]);
    pause(0.5);
end