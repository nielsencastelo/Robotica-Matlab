function [TransMat] = denavit(vet)
% [theta,d,a,alpha]
    theta = vet(1);
    d = vet(2);
    a = vet(3);
    alpha = vet(4);

    TransMat = [cos(theta)               -sin(theta)            0               a    ; ...
                sin(theta)*cos(alpha) cos(theta)*cos(alpha) -sin(alpha) -sin(alpha)*d ; ...
                sin(theta)*sin(alpha) cos(theta)*sin(alpha)  cos(alpha)   cos(alpha)*d ; ...
                          0                      0                0              1    ];
end 