function [X, k] = fs_fft(x, Fs, f_0, K)
% Returns the Fourier series coefficients of the signal x sampled at
% sampling frequency Fs [Hz] with fundamental frequency f_0 [Hz] from
% indices -K:K.
%
% X is indexed by k (e.g., k = [-K, -K+1, ..., 0, 1, ..., K] and X(1) = a_{-K}
% and the frequency corresponding to X(1) is -K*f_0 [Hz])
%
% ECE 2200 Spring 2014
% By Ricky Concepcion
%

N = length(x);
k = -K:K;
X = freqz(x, 1, k*2*pi*f_0/Fs)/N;

figure()
subplot(2, 1, 1),
stem(k, abs(X), 'LineWidth', 2)
title('Magnitude Spectrum of x(t)', 'FontSize', 16)
xlabel('k', 'FontSize', 14)
ylabel('|a_k|', 'FontSize', 14)
grid

subplot(2, 1, 2),
stem(k, angle(X), 'LineWidth', 2)
title('Phase Spectrum of x(t)', 'FontSize', 16)
xlabel('k', 'FontSize', 14)
ylabel('arg(a_k)', 'FontSize', 14)
grid