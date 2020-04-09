 % em vec deve donter na sequencia theta thetaf T
function Y=GeradorTrajetoria(t,Vec,LinCub)
theta=Vec(1,:);
thetaf=Vec(2,:);
T=t(end);
if(LinCub==1) %interpolação linear
    a(1)=theta;
    a(2)=(thetaf-theta)./T;
    fi=[ones(1,length(t));t];
    Y=a*fi;
elseif(LinCub==2)%interpolação cúbica
    a(1,:)=theta;
    a(2,:)=zeros(1,length(theta));
    a(3,:)=(3*((thetaf-theta)./T.^2));
    a(4,:)=-(2*((thetaf-theta))./T.^3);
    fi=[ones(1,length(t));t;t.^2;t.^3];
    Y=a'*fi;
end

