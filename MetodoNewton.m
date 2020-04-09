function Angle = MetodoNewton(Posicao, Rotacao)
    %% Inicialização das variáveis
    syms O1 O2 O3
    L1 = 1; L2 = 1;
    Px = Posicao(1); Py = Posicao(2); Pz = Posicao(3);
    
    T10 = Transformacao([0 0 0 O1]);
    T21 = Transformacao([0 L1 0 O2]);
    T32 = Transformacao([0 L2 0 O3]);
    T30 = simplify(T10*T21*T32);
    %% Equações que devem ter suas cinemáticas inversas encontradas
    f1 = T30(1,4) - Px;
    f2 = T30(2,4) - Py;
    f3 = T30(2,1)/T30(1,1) - Rotacao(2,1)/Rotacao(1,1);
    
    %% Jacobiano obtido a partir das funções (simbólicamente)
%     J = [diff(f1,O1) diff(f1,O2) diff(f1,O3);...
%          diff(f2,O1) diff(f2,O2) diff(f2,O3);...
%          diff(f3,O1) diff(f3,O2) diff(f3,O3)];
%     TermoNewton = inv(J)*[f1;f2;f3];
    %% Chute Inicial do método Iterativo
    Par = 0.5*ones(length([f1;f2;f3]),1);
    %% Inicio do método de Newton
    for i = 1:100
        O1 = Par(1); O2 = Par(2); O3 = Par(3);
        %% Jacobiano obtido a partir das funções(numericamente obtido usando diferenças finitas)
        Jacobiano
        %% Atualização dos parâmetros usando a equação do Método de Newton
        %% (com derivada numérica)
        Par = Par - inv(J)*eval([f1;f2;f3]);
        %% Sem derivada Numérica
%         Par = Par - eval(TermoNewton);
        %% Critério de Parada do Método de Newton
        if(abs(eval(f1))+abs(eval(f2))+abs(eval(f3)) < 0.0001)
            break;
        end
        %% Ajuste das respostas para estarem no intervalo de 0-180 graus
        Par(1) = normalizeAngle(Par(1));
        Par(2) = normalizeAngle(Par(2));
        Par(3) = normalizeAngle(Par(3));
    end
    %% Retornando o resultado em graus
    Angle = Par*180/pi;
end
    
    
    
