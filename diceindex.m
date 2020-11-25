close all;
clear all;
b=imread('bout_7.jpg');
b=rgb2gray(b);
b=imbinarize(b);
k=imresize(b,[256 256]);
k=double(k);
l=imread('GT7_bw.bmp');
l=imresize(l,[256 256]);
l=double(l);
similarity = dice(k,l);
figure
imshowpair(k,l)
title(['Dice Index = ' num2str(similarity)])