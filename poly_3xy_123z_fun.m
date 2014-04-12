function [Xgrid,Ygrid]=poly_3xy_123z_fun(xgrid,ygrid,orderz,aX,aY)
% [Xgrid Ygrid]=poly_3xy_123z_fun(xgrid,ygrid,orderz,aX,aY)
% 

% Writen by M. Brady
% Edited and Commented by S. Raben

x1=xgrid;
x2=ygrid;
[r,c]=size(xgrid);
x3=zeros(r,c);

if orderz==1                % cubic xy, linear z
    
    Xgrid=aX(1) + aX(2).*x1 + aX(3).*x2 + aX(4).*x3 + aX(5).*x1.^2 +...
        aX(6).*x1.*x2 + aX(7).*x2.^2 + aX(8).*x1.*x3 + aX(9).*x2.*x3 +...
        aX(10).*x1.^3 + aX(11).*x1.^2.*x2 + aX(12).*x1.*x2.^2 +...
        aX(13).*x2.^3 + aX(14).*x1.^2.*x3 + aX(15).*x1.*x2.*x3 +...
        aX(16).*x2.^2.*x3;
    
    Ygrid=aY(1) + aY(2).*x1 + aY(3).*x2 + aY(4).*x3 + aY(5).*x1.^2 +...
        aY(6).*x1.*x2 + aY(7).*x2.^2 + aY(8).*x1.*x3 + aY(9).*x2.*x3 +...
        aY(10).*x1.^3 + aY(11).*x1.^2.*x2 + aY(12).*x1.*x2.^2 +...
        aY(13).*x2.^3 + aY(14).*x1.^2.*x3 + aY(15).*x1.*x2.*x3 +...
        aY(16).*x2.^2.*x3;    

elseif orderz==2            % cubic xy, quadratic z
    
    Xgrid=aX(1) + aX(2).*x1 + aX(3).*x2 + aX(4).*x3 + aX(5).*x1.^2 +...
        aX(6).*x1.*x2 + aX(7).*x2.^2 + aX(8).*x1.*x3 + aX(9).*x2.*x3 +...
        aX(10).*x3.^2 + aX(11).*x1.^3 + aX(12).*x1.^2.*x2 + aX(13).*x1.*x2.^2 +...
        aX(14).*x2.^3 + aX(15).*x1.^2.*x3 + aX(16).*x1.*x2.*x3 +...
        aX(17).*x2.^2.*x3 + aX(18).*x1.*x3.^2 + aX(19).*x2.*x3.^2;   
    
    Ygrid=aY(1) + aY(2).*x1 + aY(3).*x2 + aY(4).*x3 + aY(5).*x1.^2 +...
        aY(6).*x1.*x2 + aY(7).*x2.^2 + aY(8).*x1.*x3 + aY(9).*x2.*x3 +...
        aY(10).*x3.^2 + aY(11).*x1.^3 + aY(12).*x1.^2.*x2 + aY(13).*x1.*x2.^2 +...
        aY(14).*x2.^3 + aY(15).*x1.^2.*x3 + aY(16).*x1.*x2.*x3 +...
        aY(17).*x2.^2.*x3 + aY(18).*x1.*x3.^2 + aY(19).*x2.*x3.^2;    
    
else             % pinhole
    
    
end
