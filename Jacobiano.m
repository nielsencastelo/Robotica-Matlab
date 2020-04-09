O1 = Par(1) + 0.00001; O2 = Par(2); O3 = Par(3);
f1f = eval(f1);
O1 = Par(1); O2 = Par(2); O3 = Par(3);
f1i = eval(f1);
df1dO1 = (f1f-f1i)/0.00001;

O1 = Par(1); O2 = Par(2) + 0.00001; O3 = Par(3);
f1f = eval(f1);
O2 = Par(2);
f1i = eval(f1);
df1dO2 = (f1f-f1i)/0.00001;

O3 = Par(3) + 0.00001;
f1f = eval(f1);
O3 = Par(3);
f1i = eval(f1);
df1dO3 = (f1f-f1i)/0.00001;

O1 = Par(1) + 0.00001;
f2f = eval(f2);
O1 = Par(1);
f2i = eval(f2);
df2dO1 = (f2f-f2i)/0.00001;

O2 = Par(2) + 0.00001;
f2f = eval(f2);
O2 = Par(2);
f2i = eval(f2);
df2dO2 = (f2f-f2i)/0.00001;

O3 = Par(3) + 0.00001;
f2f = eval(f2);
O3 = Par(3);
f2i = eval(f2);
df2dO3 = (f2f-f2i)/0.00001;

O1 = Par(1) + 0.00001;
f3f = eval(f3);
O1 = Par(1);
f3i = eval(f3);
df3dO1 = (f3f-f3i)/0.00001;

O2 = Par(2) + 0.00001;
f3f = eval(f3);
O2 = Par(2);
f3i = eval(f3);
df3dO2 = (f3f-f3i)/0.00001;

O3 = Par(3) + 0.00001;
f3f = eval(f3);
O3 = Par(3);
f3i = eval(f3);
df3dO3 = (f3f-f3i)/0.00001;

J = [df1dO1 df1dO2 df1dO3;...
     df2dO1 df2dO2 df2dO3;...
     df3dO1 df3dO2 df3dO3];