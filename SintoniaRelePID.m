function [P,I,D]=SintoniaRelePID(var1,var)
    h = 0.01;
    sim(var1)
    tempo = Saiday(:,1);
    Saiday = Saiday(end/2:end,2);
    Controle = Saidau(:,2);
    [ind] = find(diff(Controle)~=0);
    Pu = max(ind(end)-ind(end-3))*h;
    a = (max(Saiday)-min(Saiday))/2;
    d = 1;
    Ku = 4*d/(pi*a);
    if (var == 'PID')
      
        P = 0.6*Ku;
        Ti = Pu/2;
        Td = Pu/8;

        I = P/Ti;
        D = P*Td;
    elseif(var == 'PI ')
        
        P = 0.45*Ku;
        Ti = Pu/1.2;
        I = P/Ti;
        D=0;
    else
        P = 0.5*Ku;
        I=0;
        D=0;
    end
end