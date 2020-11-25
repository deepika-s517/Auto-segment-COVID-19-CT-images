GT = imread('bout_30.jpg');
%load FM
GT=rgb2gray(GT);
GT=imbinarize(GT);
GT=imresize(GT,[256 256]);
FM = imread('GT30_bw.bmp');
FM=imresize(FM,[256 256]);
%compute Emeasure score
%score = Emeasure(FM,GT);
MAE=sum(abs(GT(:)-FM(:)))/numel(GT);
fprintf('The similarity score between FM and GT is:%.4f\n',MAE);