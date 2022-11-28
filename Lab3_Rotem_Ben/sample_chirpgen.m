function [tvec, cnTs] = single_singen(f1, A, Fs, phi, n1, n2, mue)
Ts = 1/Fs;
tvec = [n1*Ts:Ts:n2*Ts];
cnTs = A*cos(pi*mue.*tvec.^2 + 2*pi*f1.*tvec + phi);
end
