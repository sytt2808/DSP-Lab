% Program P1_4
% Generation of a sinusoidal sequence
n = 0:50; 
f = 0.08; 
phase = -90*pi/180; 
A = 2.5; 
arg = 2*pi*f*n - phase; 
x = A*cos(arg);
clf; % Clear old graph
stem(n,x); % Plot the generated sequence
axis([0 40 -2 2]);
grid; 
title('Sinusoidal Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;
