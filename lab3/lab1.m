nn=0:100;
xx=square( 0.05 * pi * nn );
bb=[-1 3 -1];
yy=conv(bb,xx);
plot(nn,xx)
hold
plot(0:length(yy)-1,yy,'r')
I = imread('cameraman.tif');
imshow(I)
bb=[-1 3 -1];
for i=1:256
%yy2(:,i) = conv(bb,double(I(:,i)));
yy2(i,:) = conv(bb,double(I(i,:)));
end
imshow(uint8(yy2))