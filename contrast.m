function [Fcon]=contrast(graypic) 
graypic=double(graypic);
x=graypic(:); 

M4=mean((x-mean(x)).^4); 

delta2=var(x,1); 

alfa4=M4/(delta2^2); 

delta=std(x,1); 

 Fcon=delta/(alfa4^(1/4));