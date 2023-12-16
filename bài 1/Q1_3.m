% Program P1_1
% Generation of a Unit Sample Sequence 
clf;
% Generate a vector from -10 to 20
n = -10:19;
m = 0:11;
% Generate the unit sample sequence
ud = [zeros(1,10) zeros(1,11) 1 zeros(1,20-11-1)];
% Plot the unit sample sequence
stem(n,ud);
xlabel('Time index n');ylabel('Amplitude');
title('Unit Sample Sequence');
axis([-13 20 0 1.2]);
