function x = sin_gen(f, ph, d, fs)
% Returns a sinusoid with frequency f [Hz], phasor representation ph,
% and duration d [seconds], sampled at frequency fs [Hz].

A = abs(ph);
phi = angle(ph);

n = 0:d*fs;

x = A*cos(2*pi*f/fs*n - phi);