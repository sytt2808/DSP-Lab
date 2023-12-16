function Q1_28
clc;
close all;
clear;
n=0:30;
f=0.5;
for i=1:5
    A=4*rand;
    Phi=2*pi*rand;
    x=A*cos(2*pi*f*n+Phi);
    subplot(5,1,i);
    axis([0 30 min(x)-0.2 max(x)+0.2]);
    stem(n,x);
end;
end