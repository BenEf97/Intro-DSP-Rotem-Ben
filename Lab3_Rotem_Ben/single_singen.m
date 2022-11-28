function [tvec, xnTs] = single_singen(f0, A, Fs, phi, n1, n2)
Ts = 1/Fs;
tvec = [n1*Ts:Ts:n2*Ts];
xnTs = A*sin(2*pi*f0.*tvec + phi);
end
