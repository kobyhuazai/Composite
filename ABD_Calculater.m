
%qbar1=[181.8 2.9 0;2.9 10.35 0;0 0 7.17];
%qbar2 = [10.35 2.9 0;2.9 181.8 0;0 0 7.17];
%qbar3 = qbar2;
%qbar4 = qbar1;
%M = cell(4, 1);
%M{1} = qbar1;
%M{2} = qbar2;
%M{3} = qbar3;
%M{4} = qbar4;
%K = 4;
%t = 0.2;

% M = cell(HowmanyLayer, 1) -- M{n}=Q_bar--One Qbar load in OneLayer
% K:HowmanyLayer

Z=zeros(1,(K+1));
h=K*t;
for j=1:K+1
 Z(1,j)=h/2-t*(j-1);
 
end
disp(Z);
%%%%%%%%%%%%% end of for layers
aa=0;
bb=0;
dd=0;
A=zeros(3,3);
B=zeros(3,3);
D=zeros(3,3);
 for yy=1:3
 for zz= 1:3
 
 for xx= 1:K
 aa= aa+(M{xx}(yy,zz))*(Z(1,(xx))-Z(1,xx+1));
 bb=(bb+(M{xx}(yy,zz))*(Z(1,(xx+1))^2-(Z(1,xx))^2));
 dd=(dd+(M{xx}(yy,zz))*(Z(1,(xx))^3-(Z(1,xx+1))^3));
 
 
 end
 A(zz,yy)=aa;
 B(zz,yy)=0.5*bb;
 D(zz,yy)=(1/3)*dd;
 aa=0;
 bb=0;
 dd=0;
 end%%% for zz
 end%%%for yy
 
 fprintf('Matrix A = \n'); disp (A);
 fprintf('Matrix B = \n'); disp (B);
 fprintf('Matrix D = \n'); disp (D);
