clear all
close all


load('whistle.mat');
 SP_of_whi = toofast_toofourier(whistle, fs);
r = 0.9;
w = 2*pi*1830/fs;
w2 = w*3;


 
load recording.mat
test = y(:,1);
SP_of_y = toofast_toofourier(y(:,1), fs);

[a, b, ynew(:,1)] = my_notch(r, w, y(:,1));
[a, b, ynew(:,1)] = my_notch(r, w2, ynew(:,1)); 
 
SP_of_ynew1 = toofast_toofourier(ynew(:,1), fs);

[a, b, ynew(:,2)] = my_notch(r, w, y(:,2));
[a, b, ynew(:,2)] = my_notch(r, w2, ynew(:,2));

 
 sound(ynew);



