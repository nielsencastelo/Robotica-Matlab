l1 = link([0 1 0 0]); % L = link([alpha, a, theta, d, sigma(rotacional)]
l2 = link([0 1 0 0]);
r = robot({l1 l2});

q  = [0 0];
r.name = 'Tigre';
plot(r,q);
drivebot(r);