clear all
close all
load voltage.mat;
var_z0 = .36;
z0 = 2.33;
var_N = 1.96;
var_W = 0;
a = 1;
[y,vol,k] = my_kalman(x, z0, var_z0, var_W, var_N, a);
c= 0
plot(y);
for i= 1:51
    c= c+y(i);
end
mean= c/51
hold on;
plot(x);
