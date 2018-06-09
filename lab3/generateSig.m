function x = generateSig(A,omega0)

n = -pi:(0.01*pi):pi;

x = A*cos(omega0*n) + A*1i*sin (omega0*n);




