A = [1 0.5 0 1 0 0 ; 1 -0.2*exp(i*(pi/6)) 0 0 1 0; 1 -0.25 -0.125 1 0 0 ; 1 -0.75 -0.25 1 0 0; 1 -0.75 -0.5 1 0 0; 1 0 0 -1 0 1; 1 0 0 1 1 1; 1 0 0 1 1 -1]; %coeffients matrix
N=100;
n = 0:N-1; 
u =@(n) double(n>=0 &n<=99); %unit step fn
%stem(n,u(n))
for i = 1:8
    s_i = filter(A(i,[4:6]),A(i, [1:3]),u(n));
    h_i = impz(A(i,[4:6]),A(i, [1:3]),N);   
    subplot(8,1,i);
    stem(n,abs(h_i));
    hold on
    stem(n,abs(s_i),'r');
    legend('Impulse Response','Step Response')
    xlabel('Time index n'); ylabel('Amplitude');
    title('Step Response and Impulse Response for equation no:',i); grid;

end