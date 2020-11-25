close all;
clear all;
miniBatchSize = 10000;
load net12e6
I=imread('2.png');
I2=rgb2gray(I);
I2=imresize(I2,[256 256]);
%figure, imshow(I2,[]);
img=imadjust(I2);
%figure, imshow(I11,[]);
figure; imshow(img,[]);
% I1=medfilt2(I11,[11 11]);
% %figure, imshow(I1,[]);
% I1=double(I1);
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
        
        n=0; m=0;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg1(i,j)=AOH;
        
        n=1; m=1;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg2(i,j)=AOH;
        
        
        n=2; m=0;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg3(i,j)=AOH;
        
        n=2; m=2;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg4(i,j)=AOH;
        
        n=3; m=1;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg5(i,j)=AOH;
        
        n=3; m=3;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg6(i,j)=AOH;
        
        n=4; m=0;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg7(i,j)=AOH;
        
        n=4; m=2;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg8(i,j)=AOH;
        
        n=4; m=4;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg9(i,j)=AOH;
        
        n=5; m=1;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg10(i,j)=AOH;
        
        n=5; m=3;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg11(i,j)=AOH;
        
        n=5; m=5;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg12(i,j)=AOH;
        
        n=6; m=0;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg13(i,j)=AOH;
        
        n=6; m=2;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg14(i,j)=AOH;
        
        n=6; m=4;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg15(i,j)=AOH;
        
        n=6; m=6;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg16(i,j)=AOH;
        
        
        n=7; m=1;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg17(i,j)=AOH;
        
        n=7; m=3;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg18(i,j)=AOH;
        
        n=7; m=5;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg19(i,j)=AOH;
        
        n=7; m=7;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg20(i,j)=AOH;
        
        n=8; m=0;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg21(i,j)=AOH;
        
        n=8; m=2;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg22(i,j)=AOH;
        
        
        n=8; m=4;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg23(i,j)=AOH;
        
        n=8; m=6;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg24(i,j)=AOH;
        
        n=8; m=8;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg25(i,j)=AOH;
        
        n=9; m=1;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg26(i,j)=AOH;
        
        n=9; m=3;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg27(i,j)=AOH;
        
        
        n=9; m=5;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg28(i,j)=AOH;
        
        n=9; m=7;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg29(i,j)=AOH;
        
        n=9; m=9;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg30(i,j)=AOH;
        
        n=10; m=0;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg31(i,j)=AOH;
        
        n=10; m=2;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg32(i,j)=AOH;
        
        n=10; m=4;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg33(i,j)=AOH;
        
        n=10; m=6;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg34(i,j)=AOH;
        
        n=10; m=8;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg35(i,j)=AOH;
        n=10; m=10;
        [Z, AOH, PhiOH] = Zernikmoment(z,n,m);      % Call Zernikemoment fuction
        sImg36(i,j)=AOH;              
    end
end

t1=sImg1(:);
t2=sImg2(:);
t3=sImg3(:);
t4=sImg4(:);
t5=sImg5(:);
t6=sImg6(:);
t7=sImg7(:);
t8=sImg8(:);
t9=sImg9(:);
t10=sImg10(:);
t11=sImg11(:);
t12=sImg12(:);
t13=sImg13(:);
t14=sImg14(:);
t15=sImg15(:);
t16=sImg16(:);
t17=sImg17(:);
t18=sImg18(:);
t19=sImg19(:);
t20=sImg20(:);
t21=sImg21(:);
t22=sImg22(:);
t23=sImg23(:);
t24=sImg24(:);
t25=sImg25(:);
t26=sImg26(:);
t27=sImg27(:);
t28=sImg28(:);
t29=sImg29(:);
t30=sImg30(:);
t31=sImg31(:);
t32=sImg32(:);
t33=sImg33(:);
t34=sImg34(:);
t35=sImg35(:);
t36=sImg36(:);

testout=[t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36];
%dp=load('testimage1.mat');
testout1=testout';
xxtest = mat2cell(testout1,36,1*ones(65536,1));
xxtest=xxtest';
o1=imread('GT31_bw.bmp');
o2=imresize(o1,[256 256]);
%figure,imshow(o2);
o2=o2(:);
o2=double(o2);
yytest=categorical(o2);

yy1pred = classify(net12e6,xxtest,'MiniBatchSize',miniBatchSize);

accuracy = sum(yy1pred == yytest)./numel(yytest)
plotconfusion(yytest,yy1pred)
yd=string(yy1pred);
yo=double(yd);

sha=reshape(yo,256,256);
figure;imshow(sha,[]);
%figure,imshow(o2);
