load 'ECE2200LabTomography.mat'

imagesc(theta,xp,Rtransform);
xlabel('\theta (degrees)');
ylabel('projection coordinate');
z180=iradon(Rtransform,theta);
figure;
imagesc(z180);
title('reconstruction from 180 projections');
axis equal;
axis off;