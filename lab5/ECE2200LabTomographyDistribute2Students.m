%(c) Peter C. Doerschuk 2018
%Cornell University

%define the size of the disk pulse
R=1.0;

%define the grid
npoints=100;
x1grid=[-2.0*R:4.0*R/npoints:2.0*R];
[x1,x2]=ndgrid(x1grid,x1grid);

%make the disk pulse
z=double((x1.^2+x2.^2<R^2));

%define the angles and compute the transform
theta = 0:180;
[Rtransform,xp] = radon(z,theta);

%make an image of the projection data
figure;
imagesc(theta,xp,Rtransform);
xlabel('\theta (degrees)');
ylabel('projection coordinate');
title('Radon transform of disk pulse');

%make a reconstruction from data using this large number of projection directions
z180=iradon(Rtransform,theta);

%make an image of the reconstruction
figure;
imagesc(z180);
title('reconstruction from 180 projections');
axis equal;
axis off;

for nprojections=[2 4 8 16 32 64]

%define the angles with increment 180/nprojections degrees and compute the transform
theta = [0:180/nprojections:180];
fprintf(1,'ECE2200LabTomography: using 180/%d angle increments\n',length(theta));
[Rtransform,xp] = radon(z,theta);

%make a reconstruction from data using nprojections projection directions
zrecon=iradon(Rtransform,theta);

%make an image of the reconstruction
figure;
imagesc(zrecon);
title(['reconstruction from projections with angle increments 180/' num2str(nprojections)]);
axis equal;
axis off;

end

%add a high-attenuation region to the disk pulse.  Make the high-attenuation region have smooth boundary by making it be an additional disk.
mass=double(((x1-R/2).^2+(x2-R/2).^2<(R/16)^2));
density=50.0;
z=z+density*mass;
figure;
imagesc(z);
title('disk plus high-attenuation region');
axis equal;
axis off;
colorbar;

%define the angles and compute the transform
theta = 0:180;
[Rtransform,xp] = radon(z,theta);

%make an image of the projection data
figure;
imagesc(theta,xp,Rtransform);
xlabel('\theta (degrees)');
ylabel('projection coordinate');
title('Radon transform of disk plus high-attenuation region');

%make a reconstruction from data using this large number of projection directions
zrecon=iradon(Rtransform,theta);

%make an image of the reconstruction
figure;
imagesc(zrecon);
title('reconstruction of disk plus high-attenuation region');
axis equal;
axis off;

%make the message
%z=makemessage;

%define the angles and compute the transform
%theta = 0:180;
%[Rtransform,xp] = radon(z,theta);

%save theta, Rtransform, and xp
%save('ECE2200LabTomography.mat','theta','Rtransform','xp');

%instead of making the secret message, computing the radon transform, and saving the transform, just read the transform
load('ECE2200LabTomography.mat');

%make an image of the projection data
figure;
imagesc(theta,xp,Rtransform);
xlabel('\theta (degrees)');
ylabel('projection coordinate');
title('Radon transform of the secret message');

%make a reconstruction from data using this large number of projection directions
zrecon=iradon(Rtransform,theta);

%make an image of the reconstruction
figure;
imagesc(zrecon);
title('the secret message');
axis equal;
axis off;
