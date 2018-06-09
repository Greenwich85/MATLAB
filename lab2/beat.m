function x = beat(freq1, phase1, freq2, phase2, d, fs)
% Returns the sum of two sinusoids with specified frequency and phases
% with duration d sampled at frequency fs

x1 = sin_gen(freq1, phase1, 1, fs);
x2 = sin_gen(freq2, phase2, 1, fs);

x = x1 + x2;