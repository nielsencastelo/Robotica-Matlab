function angle = normalizeAngle(angle)
    if(angle < 0)
        angle = (angle + (ceil(abs(angle/(pi)))*pi));
    else
        if(angle > pi)
            angle = (angle - (floor(abs(angle/(pi)))*pi));
        end
    end
end