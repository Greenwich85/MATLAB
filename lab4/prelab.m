
x= -pi:(0.01*pi):pi;
r = [0.3, 0.6, 0.9];
w = [pi, pi/2, pi/4];
counter= 0;
for i= 1:3
    for j= 1:3
        counter= counter+1;
        [a,b,y]= my_notch(r(i),w(j),1);
        H= freqz(b,a,x);
        subplot(3,3,counter),plot(x, abs(H));
        title(r(i))
    end
end

