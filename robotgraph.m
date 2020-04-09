function [x,y] = robotgraph (L1,th1,p) 
    x = [0 L1*cos(th1) p(1)]; 
    y = [0 L1*sin(th1) p(2)]; 
end