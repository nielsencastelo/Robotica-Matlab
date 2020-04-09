function [TransMat,VarSimbolicas] = GarraBase(NumeroLinhas,MatrizDenavit)
    TransMat = eye(4);
    cont = 1;
    for i=1:NumeroLinhas
        for j=1:4
            if(isnumeric(MatrizDenavit.Mat{i,j}))
                Mat(i,j) = MatrizDenavit.Mat{i,j};
            else
                Mat(i,j) = sym(MatrizDenavit.Mat{i,j});
                VarSimbolicas(cont,:) = MatrizDenavit.Mat{i,j};
                cont = cont+1;
            end
        end
    
        [TransMat] = TransMat*denavit(Mat(i,:));
        
    end
end