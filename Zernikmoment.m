function [Z A Phi] = Zernikmoment(p,n,m)

N = size(p,1);
%N=11;
x = 1:N; y = x;
[X,Y] = meshgrid(x,y);
R = sqrt((2.*X-N-1).^2+(2.*Y-N-1).^2)/N;
Theta = atan2((N-1-2.*Y+2),(2.*X-N+1-2));
R = (R<=1).*R;

Rad = radialpoly(R,n,m);    % get the radial polynomial

Product = double(p(x,y).*Rad.*exp(-1i.*m.*Theta));
Pr=abs(Product);
Z = sum(Product(:));        
cnt = nnz(R)+1;             
Z = (n+1)*Z/cnt;           
A = abs(Z);                
Phi = angle(Z)*180/pi;      
