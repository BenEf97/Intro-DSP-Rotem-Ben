function DTFT_conv( theta,x1,x2 )
% Convolution Property of DTFT
clf; close all; clc;
i=sqrt(-1);
y = conv(x1,x2);
H1 = freqz(x1, 1, theta);
H2 = freqz(x2, 1, theta);
HP = H1.*H2;
H3 = freqz(y,1,theta);
figure(1);
[r1,c1]=size(x1);
[r2,c2]=size(x2);
[r3,c3]=size(y);
subplot(3,1,1);
stem([0:c1-1],x1);
title_1_str = ['x1[n]: length is: ' int2str(c1)];
title(title_1_str);
xlabel('n');
ylabel('x1');
subplot(3,1,2);
stem([0:c2-1],x2);
title_2_str = ['x2[n]: length is: ' int2str(c2)];
title(title_2_str);
xlabel('n');
ylabel('x2');
subplot(3,1,3);
stem([0:c3-1],y);
title_3_str = ['y[n]: length is: ' int2str(c3)];
title(title_3_str);
xlabel('n');
ylabel('y');
figure(2);
subplot(2,2,1);
plot(theta/pi,abs(HP));grid;
title('Product of Magnitude Spectra');
subplot(2,2,2);
plot(theta/pi,abs(H3));grid;
title('Magnitude Spectrum of Convolved Sequence');
subplot(2,2,3);
plot(theta/pi,angle(HP));grid;
title('Sum of Phase Spectra');
subplot(2,2,4);
plot(theta/pi,angle(H3));grid;
title('Phase Spectrum of Convolved Sequence');
end

