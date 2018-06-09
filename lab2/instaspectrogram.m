function [S,F,T] = instaspectrogram(y,Fs)
% Plots a spectrogram of sound signal y sampled at frequency Fs.
%   Returns the following outputs:
%   S(i,j) = the complex power of frequency F(i) Hz at time T(j) sec
%   F = vector of frequencies (y-axis values of S)
%   T = vector of times (x-axis values of S)
%
% ECE 2200 Spring 2014
% By Sang Min Han

figure; clf;
% [S,F,T] = SPECTROGRAM(X,WINDOW,NOVERLAP,F,Fs)
[S,F,T]= spectrogram(y,1024,512,1024,Fs);
imagesc(T,F./1000,20*log10(abs(S)));
axis xy;
xlabel('Time (s)','FontSize',14)
ylabel('Frequency (kHz)','FontSize',14)
title('Spectrogram','FontSize',16)
c= colorbar;
set(c,'FontSize',14);
ylabel(c,'Power (dB)','FontSize',14);
% sound(y,Fs);

end
