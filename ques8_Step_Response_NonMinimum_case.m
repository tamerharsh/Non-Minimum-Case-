clc; 
clear all ; 
s=tf('s');
g5=1.5/(1+63*s);
g6=2.5/((1+39*s)*(1+63*s));
g7=2.5/((1+56*s)*(1+91*s));
g8=1.6/(1+91*s);
G_NonMinimum=[g5,g6;g6,g7]

figure;
% step response for NonMinimum phase transfer function 
step(feedback(G_NonMinimum,[1,1;1,1]))
title('Step Response for NonMinimum phase transfer function ')
