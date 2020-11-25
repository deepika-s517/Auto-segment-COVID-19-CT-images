close all;
clear all;

% load f1xtrain8
% aa1=cell2mat(f1xtrain8);
% a1=reshape(aa1,36,65536);
% load f1xtrain9
% aa2=cell2mat(f1xtrain9);
% a2=reshape(aa2,36,65536);
% load f1xtrain10
% aa3=cell2mat(f1xtrain10);
% a3=reshape(aa3,36,65536);
% load f1xtrain12
% aa4=cell2mat(f1xtrain12);
% a4=reshape(aa4,36,65536);
% % load s1xtrain26
% % load s1xtrain30
% % load s1xtrain33
% % load s1xtrain43
% 
% % load e1xtrain8
% % load e1xtrain9
% % load e1xtrain10
% % load e1xtrain12
% % load e1xtrain26
% % ff1xtrain8=[f1xtrain8 e1xtrain8];
% % ff1xtrain9=[f1xtrain9 e1xtrain9];
% % ff1xtrain10=[f1xtrain10 e1xtrain10];
% % ff1xtrain12=[f1xtrain12 e1xtrain12];
% % ff1xtrain26=[f1xtrain26 e1xtrain26];
%  load f1xtrain26
%  aa5=cell2mat(f1xtrain26);
% a5=reshape(aa5,36,65536);
%  load f1xtrain2
%  aa6=cell2mat(f1xtrain2);
% a6=reshape(aa6,36,65536);
%  load f1xtrain7
%  aa7=cell2mat(f1xtrain7);
% a7=reshape(aa7,36,65536);
%  load f1xtrain23
%  aa8=cell2mat(f1xtrain23);
% a8=reshape(aa8,36,65536);
%  load f1xtrain48
%  aa9=cell2mat(f1xtrain48);
% a9=reshape(aa9,36,65536);
% xtrain=[a1 a2 a3 a4 a5 a6 a7 a8 a9];
% 
% load f1ytrain8
% load f1ytrain9
% load f1ytrain10
% load f1ytrain12
%  load f1ytrain26
%  load f1ytrain2
%  load f1ytrain7
%  load f1ytrain23
%  load f1ytrain48
% ytrain=[f1ytrain8;f1ytrain9;f1ytrain10;f1ytrain12;f1ytrain26;f1ytrain2;f1ytrain7;f1ytrain23;f1ytrain48];
% %xtrain=cell2mat(xtrain);
% ytrain=ytrain';
% ytrain=double(ytrain);
% save xtrain
% save ytrain
% % % h1=23;
% % % h2=23;
% % % h3=23;
% % % netfeed = feedforwardnet([h1 h2 h3]);
% % % % Train network
% % % [netfeed, TR] = train(netfeed, xtrain, ytrain);
% % % save netfeed;
load xtrain
k=xtrain;
load yxtrain
l=yxtrain';
h1=58;
h2=58;
h3=58;
trainFcn='trainscg';
netfeed = patternnet([h1 h2 h3],trainFcn);
netfeed .divideParam.trainRatio = 100/100;
netfeed .divideParam.valRatio = 0/100;
netfeed .divideParam.testRatio =0/100;
netfeed.trainParam.epochs=50;
netfeed.performFcn = 'crossentropy';
net.trainParam.lr = 0.02;
netfeed= configure(netfeed,k,l);
% Train network
[netfeed, TR] = train(netfeed, k, l);
% 
% save TR
% save netfeed;
% 
% figure, plotroc(targets,outputs)
%[x,t] = iris_dataset;
%net = patternnet(10);
% netfeed.performParam.regularization = 0.1;
% y = netfeed(k);
% perf = crossentropy(netfeed,l,y,{1},'regularization',0.1)