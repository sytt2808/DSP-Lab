% Program P1_1
x1= exp(n.^2023).*cos(2*pi/2023*n) 
x1=4.0862;
x2=-exp(n.^2023).*cos(2*pi/2023*n)
x2=-4.0862;
% Generation of a Unit Sample Sequence
clf;
n = -5:5;
% Generate the unit sample sequence
u = [zeros(1,5) x1 x2 zeros(1,4)];
% Plot the unit sample sequence
stem(n,u);
xlabel('Time index n');ylabel('Amplitude');
title('Unit Sample Sequence');
axis([-5 5 0 1.2]);