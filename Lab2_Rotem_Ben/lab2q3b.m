A = [1 0.5 0 1 0 0 ; 1 -0.2*exp(i*(pi/6)) 0 0 1 0; 1 -0.25 -0.125 1 0 0 ; 1 -0.75 -0.25 1 0 0; 1 -0.75 -0.5 1 0 0; 1 0 0 -1 0 1; 1 0 0 1 1 1; 1 0 0 1 1 -1]; %coeffients matrix
theta=linspace(0,4*pi,1000);
hold on
for i = 1:8
    H_i = freqz(A(i,[4:6]), A(i,[1:3]), theta);
    subplot(8,1,i)
    plot(theta/pi,abs(H_i));grid
    title('Magnitude Spectrum |H(\theta)| and Phase Spectrum arg[H(\theta)]')
    xlabel('\theta /\pi');
    hold on
    plot(theta/pi,(angle(H_i)*180/pi),'r');grid
    legend('Magnitude Spectrum','Phase Spectrum')

end