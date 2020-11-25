close all;
clear all;
x=[1,2,3,4,5];
y=[0.9,0.93857,0.8947,0.847,0.7];
% [b1_max, index] = max(y);
% a1_max = x(index);
% lengthX = length(x);
% samplingRateIncrease = 3;
% newXSamplePoints = linspace(1, lengthX, lengthX * samplingRateIncrease);
% smoothedY = spline(x, y, newXSamplePoints);
% plot(newXSamplePoints, smoothedY,a1_max, b1_max, 'ro');
% %bar(x,y,0.4,'FaceColor',[0.8500 0.3250 0.0980]);
plot(x,y,'-o','LineWidth',2);
xlabel('Different structuring element size','FontName','Times New Roman','FontSize',11) 
ylabel('Average accuracy','FontName','Times New Roman','FontSize',11) 
%ylabel('Y Axis', 'FontSize', 14, 'FontWeight', 'bold')
%tl = sprintf('"DISK" structure operation in test dataset');
title('"DISK" structure operation in test dataset','FontName','Times New Roman','FontSize',10)
text(1.3,0.895,'Accuracy=0.938','Color','black','FontName','Times New Roman','FontSize',11)
grid on