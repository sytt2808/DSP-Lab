% Program P2_3
% Generate the input sequences
clf;
n = 0:49;
a = 2;b = -3;
f1=0.2;
f2=0.1;
x1 = cos(2*pi*f1*n);
x2 = cos(2*pi*f2*n);
x = a*x1 + b*x2;
num = [1, -3/10, 1/3];
den = [1, -3/5, 38/75, 2/15];
ic = [0, 0, 0]; % Set zero initial conditions
y1 = filter(num,den,x1,ic); % Compute the output y1[n]
y2 = filter(num,den,x2,ic); % Compute the output y2[n]
y = filter(num,den,x,ic); % Compute the output y[n]
yt = a*y1 + b*y2; 
d1 = y - yt; % Compute the difference output d[n]
% Plot the outputs and the difference signal
figure('Name', 'the linearity');
subplot(3,1,1)
stem(n,y);
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
subplot(3,1,2)
stem(n,yt);
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');
subplot(3,1,3)
stem(n,d1);
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');

%time-invariant
ic = [0, 0, 0]; % Set zero initial conditions
y1 = filter(num,den,x1,ic); % Compute the output y1[n]
y2 = filter(num,den,x2,ic); % Compute the output y2[n]
y = filter(num,den,x,ic); % Compute the output y[n]
yt = a*y1 + b*y2; 
d1 = y - yt; % Compute the difference output d[n]
% Plot the outputs and the difference signal
figure('Name', 'the time-invariant');
subplot(3,1,1)
stem(n,y);
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
subplot(3,1,2)
stem(n,yt);
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');
subplot(3,1,3)
stem(n,d1);
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');

%The stability
N=100;%number of samples of the inpulse respond
h=impz(num,den,100)
parsum = 0;
for k = 1:N+1;
parsum = parsum + abs(h(k));
if abs(h(k)) < 10^(-6), break, end
end
% Plot the impulse response
figure('name','the impulse respond of DT system');
n = 0:N; stem(n,h)
xlabel('Time index n'); ylabel('Amplitude');
% Print the value of abs(h(k))
disp('Value =');disp(abs(h(k)));