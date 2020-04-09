syms o1 o2 o3 o4 o5 o6 a2 a3 d3 d4
alfa=0;
a=0;
d=0;
val1=[0 d a alfa o1];
T1=Transformacao(val1);
%%
alfa=-pi/2;
a=0;
d=0;
val2=[0 d a alfa o2];
T2=Transformacao(val2);
%%
alfa=0;
a=a2;
d=d3;
val3=[0 d a alfa o3];
T3=Transformacao(val3);
%%
alfa=-pi/2;
a=a3;
d=d4;
val4=[0 d a alfa o4];
T4=Transformacao(val4);
%%
alfa=pi/2;
a=0;
d=0;
val5=[0 d a alfa o5];
T5=Transformacao(val5);
%%
alfa=-pi/2;
a=0;
d=0;    
val6=[0 d a alfa o6];
T6=Transformacao(val6);

Tf=simple(T1*T2*T3*T4*T5*T6);