close all;
clear all;
im=imread('2.png');
im=imresize(im, [256 256]);
im=(rgb2gray(im));
k1=imadjust(im);
 figure, imshow(im);
 figure, imshow(k1);
corg=contrast(im);
cpro=contrast(k1);
cii=cpro/corg