close all;
clear all;
I=imread('1.png');
I2=rgb2gray(I);
I2=imresize(I2,[256 256]);
%figure, imshow(I2,[]);
img=imadjust(I2);
%figure, imshow(I11,[]);
figure; imshow(img,[]);
% I1=medfilt2(I11,[11 11]);
% %figure, imshow(I1,[]);
 img=double(img);
% epsilon=100;
% numberimfs=1;
% conn=8;
% [img,resx,medel]=IEMD_public(I1,epsilon,numberimfs,conn);
% %figure,imshow(uint8(img));

[mp, np] = size(img);
%img=medfilt2(img, [11 11]);
%vec=img(191:120+50-1,199:100+50-1,:);



for i = 1:mp
    for j = 1:np
        z=  [getPixe(img, i-5, j-5, mp,np),getPixe(img, i-5, j-4, mp,np),getPixe(img, i-5, j-3, mp,np),getPixe(img, i-5, j-2, mp,np),getPixe(img, i-5, j-1, mp,np), getPixe(img, i-5, j, mp,np), getPixe(img, i-5, j+1, mp,np), getPixe(img, i-5, j+2, mp,np),getPixe(img, i-5, j+3, mp,np),getPixe(img, i-5, j+4, mp,np),getPixe(img, i-5, j+5, mp,np),
            getPixe(img, i-4, j-5, mp,np),getPixe(img, i-4, j-4, mp,np),getPixe(img, i-4, j-3, mp,np),getPixe(img, i-4, j-2, mp,np),getPixe(img, i-4, j-1, mp,np), getPixe(img, i-4, j, mp,np), getPixe(img, i-4, j+1, mp,np), getPixe(img, i-4, j+2, mp,np),getPixe(img, i-4, j+3, mp,np),getPixe(img, i-4, j+4, mp,np),getPixe(img, i-4, j+5, mp,np),
            getPixe(img, i-3, j-5, mp,np),getPixe(img, i-3, j-4, mp,np),getPixe(img, i-3, j-3, mp,np),getPixe(img, i-3, j-2, mp,np),getPixe(img, i-3, j-1, mp,np), getPixe(img, i-3, j, mp,np), getPixe(img, i-3, j+1, mp,np), getPixe(img, i-3, j+2, mp,np),getPixe(img, i-3, j+3, mp,np),getPixe(img, i-3, j+4, mp,np),getPixe(img, i-3, j+5, mp,np),
            getPixe(img, i-2, j-5, mp,np),getPixe(img, i-2, j-4, mp,np),getPixe(img, i-2, j-3, mp,np),getPixe(img, i-2, j-2, mp,np),getPixe(img, i-2, j-1, mp,np), getPixe(img, i-2, j, mp,np), getPixe(img, i-2, j+1, mp,np), getPixe(img, i-2, j+2, mp,np),getPixe(img, i-2, j+3, mp,np),getPixe(img, i-2, j+4, mp,np),getPixe(img, i-2, j+5, mp,np),
            getPixe(img, i-1, j-5, mp,np),getPixe(img, i-1, j-4, mp,np),getPixe(img, i-1, j-3, mp,np),getPixe(img, i-1, j-2, mp,np),getPixe(img, i-1, j-1, mp,np), getPixe(img, i-1, j, mp,np), getPixe(img, i-1, j+1, mp,np),getPixe(img, i-1, j+2, mp,np),getPixe(img, i-1, j+3, mp,np),getPixe(img, i-1, j+4, mp,np),getPixe(img, i-1, j+5, mp,np),
            getPixe(img, i, j-5, mp,np),getPixe(img, i, j-4, mp,np),getPixe(img, i, j-3, mp,np),getPixe(img, i, j-2, mp,np),getPixe(img, i, j-1, mp,np), getPixe(img, i, j, mp,np), getPixe(img, i, j+1, mp,np), getPixe(img, i, j+2, mp,np),getPixe(img, i, j+3, mp,np),getPixe(img, i, j+4, mp,np),getPixe(img, i, j+5, mp,np),
            getPixe(img, i+1, j-5, mp,np),getPixe(img, i+1, j-4, mp,np),getPixe(img, i+1, j-3, mp,np),getPixe(img, i+1, j-2, mp,np),getPixe(img, i+1, j-1, mp,np), getPixe(img, i+1, j, mp,np), getPixe(img, i+1, j+1, mp,np), getPixe(img, i+1, j+2, mp,np), getPixe(img, i+1, j+3, mp,np), getPixe(img, i+1, j+4, mp,np), getPixe(img, i+1, j+5, mp,np)
            getPixe(img, i+2, j-5, mp,np),getPixe(img, i+2, j-4, mp,np),getPixe(img, i+2, j-3, mp,np),getPixe(img, i+2, j-2, mp,np),getPixe(img, i+2, j-1, mp,np), getPixe(img, i+2, j, mp,np), getPixe(img, i+2, j+1, mp,np), getPixe(img, i+2, j+2, mp,np), getPixe(img, i+2, j+3, mp,np), getPixe(img, i+2, j+4, mp,np), getPixe(img, i+2, j+5, mp,np)
            getPixe(img, i+3, j-5, mp,np),getPixe(img, i+3, j-4, mp,np),getPixe(img, i+3, j-3, mp,np),getPixe(img, i+3, j-2, mp,np),getPixe(img, i+3, j-1, mp,np), getPixe(img, i+3, j, mp,np), getPixe(img, i+3, j+1, mp,np), getPixe(img, i+3, j+2, mp,np), getPixe(img, i+3, j+3, mp,np), getPixe(img, i+3, j+4, mp,np), getPixe(img, i+3, j+5, mp,np)
            getPixe(img, i+4, j-5, mp,np),getPixe(img, i+4, j-4, mp,np),getPixe(img, i+4, j-3, mp,np),getPixe(img, i+4, j-2, mp,np),getPixe(img, i+4, j-1, mp,np), getPixe(img, i+4, j, mp,np), getPixe(img, i+4, j+1, mp,np), getPixe(img, i+4, j+2, mp,np), getPixe(img, i+4, j+3, mp,np), getPixe(img, i+4, j+4, mp,np), getPixe(img, i+4, j+5, mp,np)
            getPixe(img, i+5, j-5, mp,np),getPixe(img, i+5, j-4, mp,np),getPixe(img, i+5, j-3, mp,np),getPixe(img, i+5, j-2, mp,np),getPixe(img, i+5, j-1, mp,np), getPixe(img, i+5, j, mp,np), getPixe(img, i+5, j+1, mp,np), getPixe(img, i+5, j+2, mp,np), getPixe(img, i+5, j+3, mp,np), getPixe(img, i+5, j+4, mp,np), getPixe(img, i+5, j+5, mp,np)];
        %sImg1(i, j) = median(uint8(z));
        
%         n=0; m=0;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg1(i,j)=AOH;
   
 % figure, imagesc(sImg1);
%         n=1; m=1;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg2(i,j)=AOH;
%         
%         
%         n=2; m=0;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg3(i,j)=AOH;
%         
%         n=2; m=2;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg4(i,j)=AOH;
%         
%         n=3; m=1;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg5(i,j)=AOH;
%         
%         n=3; m=3;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg6(i,j)=AOH;
%         
%         n=4; m=0;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg7(i,j)=AOH;
%         
%         n=4; m=2;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg8(i,j)=AOH;
%         
%         n=4; m=4;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg9(i,j)=AOH;
%         
%         n=5; m=1;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg10(i,j)=AOH;
        
%         n=5; m=3;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg11(i,j)=AOH;
        
%         n=5; m=5;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg12(i,j)=AOH;
%         
%         n=6; m=0;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg13(i,j)=AOH;
%         
%         n=6; m=2;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg14(i,j)=AOH;
        
        n=6; m=4;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg15(i,j)=AOH;
% %         
%         n=6; m=6;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg16(i,j)=AOH;
%         
        
%         n=7; m=1;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg17(i,j)=AOH;
%         
%         n=7; m=3;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg18(i,j)=AOH;
        
%         n=7; m=5;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg19(i,j)=AOH;
%         
%         n=7; m=7;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg20(i,j)=AOH;
%         
%         n=8; m=0;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg21(i,j)=AOH;
        
%         n=8; m=2;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg22(i,j)=AOH;
%         
%         
%         n=8; m=4;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg23(i,j)=AOH;
%         
%         n=8; m=6;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg24(i,j)=AOH;
        
%         n=8; m=8;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg25(i,j)=AOH;
%         
%         n=9; m=1;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg26(i,j)=AOH;
%         
%         n=9; m=3;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg27(i,j)=AOH;
%         
%         
%         n=9; m=5;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg28(i,j)=AOH;
%         
%         n=9; m=7;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg29(i,j)=AOH;
%         
%         n=9; m=9;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg30(i,j)=AOH;
%         
%         n=10; m=0;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg31(i,j)=AOH;
%         
%         n=10; m=2;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg32(i,j)=AOH;
%         
%         n=10; m=4;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg33(i,j)=AOH;
%         
%         n=10; m=6;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg34(i,j)=AOH;
% %         
%         n=10; m=8;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg35(i,j)=AOH;
%         n=10; m=10;
%         [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
%         sImg36(i,j)=AOH;              
    end
end
figure,  imshow(uint8(sImg15));
figure,imagesc(sImg15);
