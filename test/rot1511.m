function rot1511
% homework for students but it is solved as the duty of the teacher
clc;
clear;
close all;
num=[1,-3/10,1/3];
den=[1,-3/5,38/75,2/15];
a=2;
b=-3;
n=0:49;
%x1=rand(1,length(n));
%x2=rand(1,length(n));
f1=0.2;
x1=cos(2*pi*f1*n);
f2=0.1;
x2=cos(2*pi*f2*n);
x=a*x1+b*x2;
% Examine the linearity of the DT sys.
ic=[0,0,0];
y1=filter(num,den,x1,ic);
y2=filter(num,den,x2,ic);
y=filter(num,den,x,ic);
yt=a*y1+b*y2;
d1=y-yt;
figure('Name','The linearity of the DT system','NumberTitle','off');
subplot(311);
stem(n,y);
xlabel('Time index n');
ylabel('Amplitude');
title('The output with the weighted inputs');
subplot(312);
stem(n,yt);
xlabel('Time index n');
ylabel('Amplitude');
title('The total output with the weighted outputs');
subplot(313);
stem(n,d1);
xlabel('Time index n');
ylabel('Amplitude n');
title('The difference signal');
% Examine the time-invariance of the DT sys.
D=10; % value of delay
xd=[zeros(1,D) x]; % the delay signal
ic=[0,0,0];
yd=filter(num,den,xd,ic);
d2=y-yd(D+1:end);
figure('Name','The time-invariance of the DT system','NumberTitle','off');
subplot(311);
stem(n,y);
xlabel('Time index n');
ylabel('Amplitude');
title('The output');
subplot(312);
stem(n,yd(1:length(n)));
xlabel('Time index n');
ylabel('Amplitude');
title('The output with the delayed signal');
subplot(313);
stem(n,d2);
xlabel('Time index n');
ylabel('Amplitude n');
title('The difference signal');
% Examine the stability of the DT system
N=100; % Number of samples of the impulse response
h=impz(num,den,N);
parsum = 0;
for k = 1:N+1
parsum = parsum + abs(h(k));
if abs(h(k)) < 10^ (-6), break, end
end
% Plot the impulse response
figure('Name','The impulse response of the DT system','NumberTitle','off');
n1 = 0:N-1; 
stem(n1,h);
xlabel('Time index n');
ylabel('Amplitude');
title('The impulse response');
grid on;
% Print the value of abs(h(k))
disp('Value =');
disp(abs(h(k)));
disp(k);
end