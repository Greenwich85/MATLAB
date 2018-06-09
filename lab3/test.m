%t = linspace(0,2*pi,25);


%complexSignal = cos(t) + 1i*sin (t);

x = generateSig(1,0);

y = generateSig2(1,0);
a = abs(0.5*x+0.5*y);
b = max(a);
plot(a);