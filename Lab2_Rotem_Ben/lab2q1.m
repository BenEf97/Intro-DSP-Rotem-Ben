%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Code suggestion by ROT%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A is a matrix to hold all coeficcents for all equations (second order equations for both parameters)
A = [1 0.5 0 1 0 0 ; 1 -0.2*exp(i*(pi/6)) 0 0 1 0; 1 -0.25 -0.125 1 0 0 ; 1 -0.75 -0.25 1 0 0; 1 -0.75 -0.5 1 0 0; 1 0 0 -1 0 1; 1 0 0 1 1 1; 1 0 0 1 1 -1];
N=100;
n=0:N-1;
hold on
for i = 1:8
    h_i = impz(A(i,[4:6]),A(i, [1:3]),N);   
    subplot(8,1,i)
    if i == 2
        stem(n,abs(h_i));
    else
        stem(n,h_i);
    end
    xlabel('Time index n'); ylabel('Amplitude');
    title('Impulse Response for equation no:',i); grid;

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% --END-- %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

