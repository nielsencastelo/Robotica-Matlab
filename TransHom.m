function [T,V]=TransHom(R,P,Pin)
    V=[R P;0 0 0 1];
    T=V*[Pin;1];
end