close all;
clear all;
g=imread('GT48_bw.bmp');
g=imresize(g,[256 256]);
figure, imshow((g));
gq=imread('out_48.png');
gq=imresize(gq,[256 256]);
figure, imshow(gq);
gq=rgb2gray(gq);
a = imbinarize(gq); % Binarize the image
b = bwmorph(a,'fill'); % Use this to connect the pixels 
figure,imshow(b);
se = strel('disk', 1); % Structuring element for dilation
v=imerode(b,se);
figure,imshow(v);
se = strel('disk', 2);
E = imdilate(v, se); % Dilating the image
imshow(E);
% %imshow(g,'InitialMag', 'fit');
% green = cat(3, zeros(size(E)), ones(size(E)), zeros(size(E)));
% hold on
% h = imshow(green);
% hold off
% set(h, 'AlphaData', g)


[B,L] = bwboundaries(g,'noholes');
figure, imshow(E)
hold on
for k = 1:length(B)
   boundary = B{k};
   plot(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 3)
end


% close all;
% clear all;
% g1=imread('GT8_bw.bmp');
% g1=double(g1);
% gs=imresize(g1,[256 256]);
% figure,imshow(gs);
% gs=255*gs;
% g1=g1(:);
% %g1=g1';
% 
% 
% gq=imread('out8.png');
% figure, imshow(gq);
% gq=imcrop(gq);
% g=imresize(gq,[256 256]);
% figure,imshow((g));
% g2=rgb2gray(double(g));
% figure,imshow(g2);
% 
% se = strel('disk',1);
% 
% af = imopen(g2,se);
% figure,imshow(af);
% g3=imbinarize(af);
% se = strel('disk',3);
% 
% closeBW = imclose(g3,se);
% figure,imshow(closeBW);
% 
% [B,L] = bwboundaries(closeBW,'noholes');
% figure,imshow(L);
% green = cat(3, zeros(size(g)), ones(size(g)), zeros(size(g))); 
% hold on 
% h= imshow(green); 
% hold off 
% set(h, 'AlphaData', c) 
% % 
% hold on
% for k = 1:length(B)
%    boundary = B{k};
%    plot(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 2)
% end
% % n=imfill(L,'holes');
% % % figure,imshow(n);
%   c=imfuse(gs,g2,'blend');
%   figure,imshow(c);

%  n=imfill(L,'holes');
%  figure,imshow(n);
% hold on
% figure,imshow(n);
% se = strel('diamond',5);
% % 
%  BW2 = imdilate(L,se);
% figure,imshow(BW2);
% 
% n=imfill(BW2,'holes');
% figure,imshow(n);
% % g=imread('pro8.png');
% % g=rgb2gray(g);
% % g=double(g);
% % g=imresize(g,[256 256]);
% BW2=BW2(:);
% %L=L';
% C=confusionmat(g1,BW2);
%  figure,confusionchart(C)

