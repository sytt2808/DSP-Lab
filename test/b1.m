n=0:299;
x1=cos(2*pi*10*n/256);
x2=cos(2*pi*100*n/256);
x=x1+x2;
num1=[0.5 0.27 0.77];
y1=filter(num1,den2,x);
den2=[1 -0.53 0.46];
num2=[0.45 0.5 0.45];
y2=filter(num2,den2,x);
subplot(211);
plot(n,y1);axis([0 300 -2 2]);
ylabel('Amplitude');
title('The output with the weighted inputs #1');grid;
subplot(212);
plot(n,y2);axis([0 300 -2 2]);
ylabel('Amplitude');
xlabel('time index n');
title('The output with the weighted inputs #2');grid;