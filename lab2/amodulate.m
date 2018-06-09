function y = amodulate(x, wc, d, fs)
% Returns the amplitude-modulated version of x 
% modulated by a cosine of unit amplitude and carrier frequency wc [rad/s]. 
% The result has duration d sampled at frequency fs

carrier = sin_gen(wc/(2*pi), 1, 1, fs);

y = x.*carrier;