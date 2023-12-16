% Program P3_10
% Linear Convolution via Circular Convolution
g1 = [9 6 1 5 0 1];g2 = [ 0 1 2 3 5];
g1e = [g1 zeros(1,length(g2)-1)];
g2e = [g2 zeros(1,length(g1)-1)];
ylin = cconv(g1e,g2e);
disp('Linear convolution via circular convolution = ');disp(ylin);
y = conv(g1, g2);
disp('Direct linear convolution = ');disp(y)