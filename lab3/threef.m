b=[1/7 1/7 1/7 1/7 1/7 1/7 1/7];
c=zeros;
for i = 1:31
    c(i)=1/31;
end
w=-pi:(0.01*pi):pi;
H1=freqz(b, 1, w);
H2=freqz(c, 1, w);
plot(w, abs(H1), w, abs(H2));