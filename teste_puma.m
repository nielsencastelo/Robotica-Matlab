clear; close all; clc;
% Primeiro, a função Link é usada para criar cada elo. 
% Os parâmetros da função Link são exatamente os parâmetros
% de Denavit-Hartemberg do elo em questão, nesta ordem: 
% theta = ângulo da junta (rad)
% d = deslocamento do elo (m)
% a = comprimento do elo (m)
% alpha = torção do elo (rad)
% sigma = tipo de junta (0: rotativa ou 1: prismática)

L(1) = Link([0 1 0 pi/2 0]);
L(2) = Link([0 0 1 0  0]);
L(3) = Link([0 0 0 pi/2 0]);
L(4) = Link([0  1 0 0 0]);

% Em seguida, a função SerialLink cria o robô

robo = SerialLink(L, 'name', 'Robô Arm');

% A função fkine permite obter a matriz de transformação
% homogênea que relaciona o referencial da base com o do
% efetuador (cinemática direta) para uma dada configuração.

disp('Variáveis de juntas:');
q0 = [0 0 0 0];
qf = [pi pi/4 3*pi/4 pi];
qf2 = [pi pi/4 3*pi/4 0];

disp('Cinematica Direta:');
T = robo.fkine(qf);

% A matriz jacobiana relaciona as velocidades das juntas com
% a velocidade espacial do efetuador. O toolbox permite obter
% o jacobiano geométrico (que considera as componentes de 
% velocidade cartesiana do efetuador):

disp('Jacobiano:');
J = robo.jacob0(qf);

% Finalmente, é possível calcular o índice de manipulabilidade
% deste efetuador na configuração dada:

m = sqrt(det(J*J'));

% A representação gráfica do robô para as posições articulares
% armazenadas no vetor q pode ser obtida com a função plot. No
% exemplo a seguir, uma animação é gerada a partir de uma 
% sequência de configurações articulres:

tempo = 0:.1:10;
q = jtraj(q0, qf, tempo);
robo.plot(q)
q = jtraj(qf, qf2, tempo);
robo.plot(q)