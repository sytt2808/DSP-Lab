% Program P3_1 for evaluating G(z) using the freqz function
clf;

% Define the coefficients for G(z)
num = [2 5 9 5 3];
den = [5 45 2 1 1];

% Compute the frequency response using freqz
N = 256; % Number of points for frequency response
desired_frequencies = [0, pi/2, pi]; % Add more frequencies as needed
[h, w] = freqz(num, den, N, 'whole');

% Plot the frequency response
subplot(2,1,1)
plot(w/pi, real(h)); grid
title('Real part of G(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Amplitude');

subplot(2,1,2)
plot(w/pi, imag(h)); grid
title('Imaginary part of G(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Amplitude');

% Display frequency response values at specific frequencies
for freq = desired_frequencies
    [~, index] = min(abs(w - freq));
    fprintf('Frequency: %.2f*pi, Magnitude: %.4f, Phase: %.4f radians\n', freq/pi, abs(h(index)), angle(h(index)));
end

% Continue with plotting magnitude and phase spectrum
figure;

subplot(2,1,1)
plot(w/pi, abs(h)); grid
title('Magnitude Spectrum |G(e^{j\omega})|')
xlabel('\omega /\pi');
ylabel('Amplitude');

subplot(2,1,2)
plot(w/pi, angle(h)); grid
title('Phase Spectrum arg[G(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Phase, radians');