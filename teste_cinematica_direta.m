% teste cinematica direta
L1 = 1;
L2 = 1;
th1 = 0:pi/10:pi;
th2 = 0:pi/10:pi;

p = cinematica_direta(L1,L2,th1,th2);

plot(p(1,:),p(2,:));