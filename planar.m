function [o] = planar(l1,l2,x,y)
% pos = [x y];

r = sqrt(x^2+y^2);

if(r <=(l1+l2) && (x~=0 || y~=0))
    
    % Calculoda cinematica Inversa
    a1 = atan(abs(y/x));
    h  = (r^2+l1^2-l2^2)/(2*r*l1);
    b1 = acos((r^2+l1^2-l2^2)/(2*r*l1));
    o1 = atan(abs(y/x))+acos((r^2+l1^2-l2^2)/(2*r*l1)); % theta 1
    b2 = acos((l1^2+l2^2-r^2)/(2*l2*l1));
    o2 = pi+ b2; % tetha 2
    
    o =[o1 o2];
    
    if x<0
        x0 = -cos(o1)*l1;
    else
        x0 = cos(o1)*l1;
    end
     
    if y<0
        y0 = -sin(o1)*l1;
    else
        y0 = sin(o1)*l1;
    end
    
    a = isreal(o1);
    b = isreal(o2);
    
    if(a==0 || b==0)
        %disp('Ponto n�o pode ser alcansado...')
        o=[];
        plot(x,y,'kX')
        axis([-(l1+l2) (l1+l2) -(l1+l2) (l1+l2)])
        grid on
        xlabel('X')
        ylabel('Y')
    else
        plot(x,y,'rX')
        grid on
        hold on
        
        plot(0,0,'gO')
        plot([0 x0],[0 y0],'g')
        
        plot(x0,y0,'rO')
        plot([x x0],[y y0],'r')
        
        plot(x,y,'bO')
        axis([-(l1+l2) (l1+l2) -(l1+l2) (l1+l2)])
        
        xlabel('X')
        ylabel('Y')
    end
else
    %disp('Ponto n�o pode ser alcansado...')
    o =[];
    plot(x,y,'kX')
    axis([-(l1+l2) (l1+l2) -(l1+l2) (l1+l2)])
    grid on
    xlabel('X')
    ylabel('Y')
end
