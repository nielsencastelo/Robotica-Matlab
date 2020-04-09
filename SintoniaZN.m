function [P,I,D]=SintoniaZN(var1,var,var2)
    h = 0.01;
    sim(var1)
    tempo = Saida.time;
    Saida = Saida.signals.values(:,1);
    dSaida = diff(Saida)/h;
    [MaxDSaida] = max(dSaida);
    IndMaxSaida = find((Saida<=(MaxDSaida*1.01)) & (Saida>=(MaxDSaida*0.99)));
    IndMaxSaida = IndMaxSaida(1);
    a = ((Saida(IndMaxSaida+3) - Saida(IndMaxSaida-3))/(tempo(IndMaxSaida+3) - tempo(IndMaxSaida-3)));
    b = (Saida(IndMaxSaida+3)-a*(tempo(IndMaxSaida+3)));
    y = a*tempo + b;
    K = max(Saida);
    Theta = -b/a;
    tau = (K - b)/a - Theta;
    plot(tempo,Saida)
    hold
    plot(tempo, y,'r-.')
    
    if (var == 'PID')
        if (var2 == 'ZN')
            P = 1.2*tau/(K*Theta);
            Ti = 2*Theta;
            Td = 0.5*Theta;
        else
            P = (1/K)*(tau/Theta)*((3/4)+(Theta/(4*tau)));    
            Ti = Theta*((32+6*(Theta/tau))/(13+8*(Theta/tau)));
            Td = Theta*(4/(11+2*(Theta/tau)));
        end
            I = P/Ti;
            D = P*Td;
    elseif(var == 'PI ')
        if (var2 == 'ZN')
            P = 0.9*tau/(K*Theta);
            Ti = 3.33*Theta;
        else
            P = (1/K)*(tau/Theta)*(0.9+(Theta/(12*tau)));
            Ti = Theta*((30+3*(Theta/tau))/(9+20*(Theta/tau)));
        end
        I = P/Ti;
        D=0;
    else
        if(var2 == 'ZN')
            P = tau/(K*Theta);
        else 
            P = (1/K)*(tau/Theta)*(0.9+(Theta/(3*tau)));
        end
        I=0;
        D=0;
    end
end