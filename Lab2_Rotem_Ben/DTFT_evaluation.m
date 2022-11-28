function DTFT_evaluation( num,den,theta )
% Evaluation of the DTFT 
clf; close all; clc;
% Compute the frequency samples of the DTFT
h = freqz(num, den, theta);
% Plot the DTFT
figure(1)
subplot(2,1,1)
plot(theta/pi,real(h));grid
title('Real part of H(\theta)]')
xlabel('\theta /\pi');
ylabel('Amplitude');
subplot(2,1,2)
plot(theta/pi,imag(h));grid
title('Imaginary part of H(\theta)]')
xlabel('\theta /\pi');
ylabel('Amplitude');
figure(2)
subplot(2,1,1)
plot(theta/pi,abs(h));grid
title('Magnitude Spectrum |H(\theta)|')
xlabel('\theta /\pi');
ylabel('Amplitude');
subplot(2,1,2)
plot(theta/pi,angle(h));grid
title('Phase Spectrum arg[H(\theta)]')
xlabel('\theta /\pi');
ylabel('Phase in radians');


end

