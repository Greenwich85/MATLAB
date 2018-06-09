t = linspace(-5,5);
y1 = -2.2*t;

plot(t,y1);

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
x = [-3,3,0.5,-0.6];
y = [-4,-2,1,1];
hold on
scatter(x,y,'o');
grid on;
axis equal;



% x = -2*pi:0.1:2*pi;  
% y = sin(x);
% 
% plot(x,y)
% xlabel('x')
% ylabel('sin(x)')

