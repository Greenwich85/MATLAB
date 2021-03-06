function [x, z] = kalman_maybe(z0, L, var_W, var_N, a)
% Returns L realizations of the random process generated by the following
% signal and observation models:
%
% Z(n) = a*Z(n-1) + W(n)
% X(n) = Z(n) + N(n)
%
% where:
% Z(n) : The hidden random signal we are trying to estimate.
% W(n) : Additive perturbation with mean zero and variance var_W.
%        The perturbation samples are independent of each other and X(n).
% X(n) : Our measurements with which we are trying to estimate Z(n).
% N(n) : Additive measurement noise with mean zero and variance var_N.
%        The noise samples are independent of each other and Z(n)
%
% Input:
% z0        : a realization of Z[0] (scalar)
% L         : number of observations of Z (scalar)
% var_W     : variance of the perturbation process W(n) (scalar)
% var_N     : variance of the measurement noise N(n) (scalar)
% a         : signal model parameter (scalar)
%
% Output:
% x         : a signal of N observations generated by the model (vector)
% z         : a signal of N realizations of the hidden random process x (vector)
%
% ECE 2200 Spring 2014
% By Ricky Concepcion
%

x = zeros(L, 1);
z = zeros(L, 1);

for k = 1:L
    if k ~= 1
        z(k) = a*z(k-1) + sqrt(var_W)*randn(1);
    else
        z(k) = z0;
    end
    
    x(k) = z(k) + sqrt(var_N)*randn(1);
end
    