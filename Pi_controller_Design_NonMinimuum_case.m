% PI controller design for NonMinimum case 
clc; 
clear all ;
s=tf('s');
g11=1.5/(1+63*s);
g12=2.5/((1+39*s)*(1+63*s));
g21=2.5/((1+56*s)*(1+91*s));
g22=1.6/(1+91*s);
G_NonMinimum=[g11,g12;g21,g22]

% controller parameters
K1=1.5;
K2=-0.12;
Ti1=110;
Ti2=220;


C1=K1*(1+(1/Ti1*s));
C2=K2*(1+(1/Ti2*s));
% since y1 is paired with u2 and y2 is paired with u1 so applying PI Control PairWise  
p1=C1*g12; 
step(feedback(p1,1))
figure; 
title('NonMinimum Phase /step response y1 with controller C1 and g12 as the gain matrix ')

p2=C2*g21;
step(feedback(p2,1))
title('NonMinimum Phase/step response y2 with controller C2 and g21 as the gain matrix ')

