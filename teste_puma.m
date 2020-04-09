clear; close all; clc;
% Primeiro, a fun��o Link � usada para criar cada elo. 
% Os par�metros da fun��o Link s�o exatamente os par�metros
% de Denavit-Hartemberg do elo em quest�o, nesta ordem: 
% theta = �ngulo da junta (rad)
% d = deslocamento do elo (m)
% a = comprimento do elo (m)
% alpha = tor��o do elo (rad)
% sigma = tipo de junta (0: rotativa ou 1: prism�tica)

L(1) = Link([0 1 0 pi/2 0]);
L(2) = Link([0 0 1 0  0]);
L(3) = Link([0 0 0 pi/2 0]);
L(4) = Link([0  1 0 0 0]);

% Em seguida, a fun��o SerialLink cria o rob�

robo = SerialLink(L, 'name', 'Rob� Arm');

% A fun��o fkine permite obter a matriz de transforma��o
% homog�nea que relaciona o referencial da base com o do
% efetuador (cinem�tica direta) para uma dada configura��o.

disp('Vari�veis de juntas:');
q0 = [0 0 0 0];
qf = [pi pi/4 3*pi/4 pi];
qf2 = [pi pi/4 3*pi/4 0];

disp('Cinematica Direta:');
T = robo.fkine(qf);

% A matriz jacobiana relaciona as velocidades das juntas com
% a velocidade espacial do efetuador. O toolbox permite obter
% o jacobiano geom�trico (que considera as componentes de 
% velocidade cartesiana do efetuador):

disp('Jacobiano:');
J = robo.jacob0(qf);

% Finalmente, � poss�vel calcular o �ndice de manipulabilidade
% deste efetuador na configura��o dada:

m = sqrt(det(J*J'));

% A representa��o gr�fica do rob� para as posi��es articulares
% armazenadas no vetor q pode ser obtida com a fun��o plot. No
% exemplo a seguir, uma anima��o � gerada a partir de uma 
% sequ�ncia de configura��es articulres:

tempo = 0:.1:10;
q = jtraj(q0, qf, tempo);
robo.plot(q)
q = jtraj(qf, qf2, tempo);
robo.plot(q)