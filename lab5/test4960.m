
x = [1.0 2.0 3.0 4.0 5.0 6.0];
y = [0 1.0 0 -1.0 0 1.0];



xx = 0:.25:10;
yy = spline(x,y,xx);
plot(x,y,'o',xx,yy)