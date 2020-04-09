function [newPBest newPBestFitness newGBest newGBestFitness] = updateBest(pBest, pBestFitness,gBest, gBestFitness, X, xFitness)
%#eml

    [bestValue bestInd] = min(pBestFitness);
    newPBest = pBest;
    newPBestFitness=pBestFitness;
    if ( bestValue < gBestFitness )
        newGBestFitness = bestValue;
        newGBest = pBest(bestInd,:);
    else
        newGBestFitness = gBestFitness;
        newGBest = gBest;
    end
    for i=1:length(pBestFitness)
        if(xFitness(i) < pBestFitness(i))
            newPBestFitness(i) = xFitness(i);  
            newPBest(i,:) = X(i,:);
        end
    end
end

