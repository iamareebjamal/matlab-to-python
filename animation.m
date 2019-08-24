clc
clear all
[x,y] = meshgrid(0:0.05:2,0:.05:2);
m=input('m');
n=input('n')
for i=0:100
z= 3*(sin(m*pi*x/2)).*(sin(n*pi*y/2)).*sin(i/10);
surf(x,y,z);
zlim([-5 5])
pause(0.1)
end

0.100783347396329+6.176529942819232e-04+6.176529942819232e-04+0.100783347396329