close all;
clear all;

x= [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36];
y=[184,3,97,3,5.9,3.5,187,3.5,16.5,1.2,1.7,0.4,255,2.4,14.1,3.7,4.57,1.9,3.1,2.22,301,2.8,1.6,3.25,58.7,2.9,1.5,1.3,6.2,5.2,442,2.2,18.9,0.7,81,1.6];
y1=[109,2.1,60.95,2.1,3.8,0.7,109,4.7,10.3,0.32,5.1,1.4,146,2.6,9.6,1.8,3.4,6.0,0.9,1.2,180,2.0,3.4,3.3,34.4,1.8,3.35,3.4,1.5,0.2,265,1.8,8.6,3.1,49,2.88];
y2=y1/1000;
y3=y/1000;
plot(x,y3,'-ro',x,y2,'-go','LineWidth',1.2);
% %plot(t,sin(2*t),'-mo',...
%     'LineWidth',2,...
%     'MarkerEdgeColor','k',...
%     'MarkerFaceColor',[.49 1 .63],...
%     'MarkerSize',10)
xlabel('36 combination of n and m','FontSize',11,'FontName','Times New Roman');
ylabel('ZM magnitude' ,'FontSize',11,'FontName','Times New Roman');
legend('Infected point','Background point','FontSize',11,'Location','northwest','FontName','Times New Roman');
legend box off