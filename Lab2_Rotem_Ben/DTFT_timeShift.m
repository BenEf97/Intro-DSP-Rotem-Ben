function DTFT_timeShift( theta,D,h1 )
% Time-Shifting Properties of DTFT
clf; close all; clc;
h2 = [zeros(1,D) h1];
H1 = freqz(h1, 1, theta);
H2 = freqz(h2, 1, theta);
[rh1,ch1] = size(h1);
figure(1);
subplot(2,1,1);
stem([0:ch1-1],h1);
title('h1[n]');
xlabel('n');
ylabel('h1');
grid;
subplot(2,1,2);
[rh2,ch2] = size(h2);
stem([0:ch2-1],h2);
title('h2[n]');
xlabel('n');
ylabel('h2');
grid;
figure(2);
subplot(2,2,1);
plot(theta/pi,abs(H1));grid
title('Magnitude Spectrum of Original Sequence')
subplot(2,2,2)
plot(theta/pi,abs(H2));grid
title('Magnitude Spectrum of Time-Shifted Sequence')
subplot(2,2,3)
plot(theta/pi,angle(H1));grid
title('Phase Spectrum of Original Sequence')
subplot(2,2,4)
plot(theta/pi,angle(H2));grid
title('Phase Spectrum of Time-Shifted Sequence')


end

