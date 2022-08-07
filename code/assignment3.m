close all;
clear all;
clc

I = im2single(imread('faces1.jpg'));
Ig=rgb2gray(I);

ohist=hog(Ig);

visual=hogdraw(ohist,15);
figure;
imagesc(visual);