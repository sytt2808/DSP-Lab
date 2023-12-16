clc;
clear;

num = [0.5108, 1.0215, 0.5108];
den = [1, 0.5654, 0.4776];
a = 3;
b = -2;
f1 = 0.2;

n = 0:19;

x1 = sin(0.1*pi*n);  
x2 = cos(0.2*pi*n);

ic = zeros(1, max(length(num), length(den)) - 1);

y1 = filter(num, den, x1, ic);
y2 = filter(num, den, x2, ic);
y = filter(num, den, cos(2*pi*f1*n), ic);
yt = a*y1 + b*y2;

figure('Name', 'Impulse Response of the DT System', 'NumberTitle', 'off');
subplot(3, 1, 1);
stem(n, x1);
xlabel('Time index n');
ylabel('Amplitude');
title('Input Signal x1');
grid on;

subplot(3, 1, 2);
stem(n, x2);
xlabel('Time index n');
ylabel('Amplitude');
title('Input Signal x2');
grid on;

subplot(3, 1, 3);
stem(n, yt);
xlabel('Time index n');
ylabel('Amplitude');
title('Output Signal y_t');
grid on;

% Adjust the layout to prevent overlapping titles
sgtitle('Impulse Response and Input Signals');
