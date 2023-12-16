% Program P1_4
% Generation of a sinusoidal sequence
n = 0:40; 
f = 0.1; 
phase = 0; 
A = 1.5; 
arg = 2*pi*f*n - phase; 
x = A*cos(arg);
clf; % Clear old graph
stairs(n,x); % Plot the generated sequence
axis([0 40 -2 2]);
grid; 
title('Sinusoidal Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;