clc
clear all
xi=[]
for phi= 0.001:0.01:0.8
c1= 1/6;
c2= c1/50;
c1a= (4.073*sqrt(c1)+1.053*c2)*0.5*(3*cos(1.5*phi)+cos(0.5*phi));
c2a= 5.28*c2*sin(phi)*cos(phi);
syms x
eqn = c1a*x^(1.5)-x-c2a == 0;
solx = double(solve(eqn,x))
xi=[xi;solx];
end
plot(0.001:0.01:0.8,xi,'LineWidth',1.5)
hold on
xi1=[]
for phi= 0.001:0.01:0.8
c1= 1/6;
c2= c1/10;
c1a= (4.073*sqrt(c1)+1.053*c2)*0.5*(3*cos(1.5*phi)+cos(0.5*phi));
c2a= 5.28*c2*sin(phi)*cos(phi);
syms x
eqn = c1a*x^(1.5)-x-c2a == 0;
solx = double(solve(eqn,x))
xi1=[xi1;solx];
end
plot(0.001:0.01:0.8,xi1,'LineWidth',1.5)
hold on
xi2=[]
for phi= 0.001:0.01:0.8
c1= 1/6;
c2= c1;
c1a= (4.073*sqrt(c1)+1.053*c2)*0.5*(3*cos(1.5*phi)+cos(0.5*phi));
c2a= 5.28*c2*sin(phi)*cos(phi);
syms x
eqn = c1a*x^(1.5)-x-c2a == 0;
solx = double(solve(eqn,x))
xi2=[xi2;solx];
end
plot(0.001:0.01:0.8,xi2,'LineWidth',1.5)
hold on
xi3=[]
for phi= 0.001:0.01:0.8
c1= 1/6;
c2= 5*c1;
c1a= (4.073*sqrt(c1)+1.053*c2)*0.5*(3*cos(1.5*phi)+cos(0.5*phi));
c2a= 5.28*c2*sin(phi)*cos(phi);
syms x
eqn = c1a*x^(1.5)-x-c2a == 0;
solx = double(solve(eqn,x))
xi3=[xi3;solx];
end
plot(0.001:0.01:0.8,xi3,'LineWidth',1.5)
hold on
legend('c_{2}/c_{1}=1/50','1/10','1','5','FontSize',14)
xlabel('Angle (Rad)')
ylabel('\xi*','FontSize',18,'FontWeight','bold')
grid on