function [mag,ori] = mygradient(I)
%
% compute image gradient magnitude and orientation at each pixel
%
%
assert(ndims(I)==2,'input image should be grayscale');
Gx=[-1 0 1];
Gy=[-1; 0; 1];
dx = imfilter(I,Gx,'replicate','same');
dy = imfilter(I,Gy,'replicate','same');

mag = sqrt(dx.^2+dy.^2);
ori = atan(dy./dx);

assert(all(size(mag)==size(I)),'gradient magnitudes should be same size as input image');
assert(all(size(ori)==size(I)),'gradient orientations should be same size as input image');
