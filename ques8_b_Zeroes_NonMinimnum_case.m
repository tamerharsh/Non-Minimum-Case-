% To calculate zeroes for NonMinimum case 
clear all ; 
clc; 
s=tf('s');
gamma1=0.43;
gamma2=0.34;
T1=63;
T2=91;
T3=39;
T4=56;
ke=0.50;
k1=3.14;
k2=3.29;
A1=28;
A2=32;

c1 = T1*k1*(ke/A1);
c2=T2*k2*ke/A2;
tf_a=(c1*c2/((gamma1*gamma2)*((1+s*T1)*(1+s*T2)*(1+s*T3)*(1+s*T4))));
tf_b=(((1+s*T3)*(1+s*T4))-((1-gamma1)*(1-gamma2)/(gamma1*gamma2)));
tf_NonMinimum=(tf_a)*(tf_b);
zpk(tf_NonMinimum)
display('the zeroes are  -0.5629  and 0.0128 ')
% RGA 

lambda=gamma1*gamma2/((gamma1+gamma2)-1)

RGA=[lambda, 1-lambda; 1-lambda,lambda]
