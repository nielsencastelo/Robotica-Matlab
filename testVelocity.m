function newV = testVelocity( V, v, vMax )
%#eml
    indZero = find(V == 0);
        
    for i=1:length(indZero)
        if (rand < 0.5)
            V(indZero(i)) = rand * v;
        else
            V(indZero(i)) = - rand * v;
        end
        vid = V(indZero(i));
        V(indZero(i)) = sign(vid) * min( [abs(vid) vMax] );
    end
    
    newV = V;
end

