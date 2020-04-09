function T=Transformacao(Vet)
    theta=Vet(4);
    alfa=Vet(1);
    a=Vet(2);
    d=Vet(3);
    T=[           cos(theta),          -sin(theta),          0,            a;...
        cos(alfa)*sin(theta), cos(alfa)*cos(theta), -sin(alfa), -d*sin(alfa);...
        sin(alfa)*sin(theta), sin(alfa)*cos(theta),  cos(alfa),  d*cos(alfa);...
             0,                    0,          0,            1];
end