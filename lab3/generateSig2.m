function y = generateSig2(A,omega0)

n = -pi:(0.01*pi):pi;

y = A*cos(omega0*(n-1)) + A*1i*sin (omega0*(n-1));
