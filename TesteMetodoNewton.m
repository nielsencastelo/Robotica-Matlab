O1 = 100*pi/180;
O2 = 95*pi/180;
O3 = 95*pi/180;

L1 = 1; L2 = 1;
T10 = Transformacao([0 0 0 O1]);
T21 = Transformacao([0 L1 0 O2]);
T32 = Transformacao([0 L2 0 O3]);
T30 = T10*T21*T32;

Posicao = T30(1:3,4);
Rotacao = T30(1:3,1:3);

MetodoNewton(Posicao, Rotacao)