% Program P2_3
% Generate the input sequences
% clf;
clc;
clear all;
close all;
n = 0:40;
a = 2;b = -3;
x1 = cos(2*pi*0.1*n);
x11=[0 x1]; %x1(n-1)
x12=[x1 0]; %x1(n)
y1=x11.*x12;
x2 = cos(2*pi*0.4*n);
x21=[0 x2]; %x2(n-1)
x22=[x2 0]; %x2(n)
y2=x21.*x22;
x = a*x1 + b*x2;
xx1=[0 x];
xx2=[x 0];
y=xx1.*xx2;
% num = [2.2403 2.4908 2.2403];
% den = [1 -0.4 0.75];
% ic = [0 0]; % Set zero initial conditions
% y1 = filter(num,den,x1,ic); % Compute the output y1[n]
% y2 = filter(num,den,x2,ic); % Compute the output y2[n]
% y = filter(num,den,x,ic); % Compute the output y[n]
yt = a*y1 + b*y2; 
d = y - yt; % Compute the difference output d[n]
% Plot the outputs and the difference signal
subplot(3,1,1)
stem([n,41],y);
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
subplot(3,1,2)
stem([n,41],yt);
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');
subplot(3,1,3)
stem([n,41],d);
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');
