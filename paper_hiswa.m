
load('output\cl2.mat');
load('output\cl.mat');
load('output\x.mat');
load('output\y.mat');
load('output\z.mat');
load('paper_hiswa_falt');

z(4) = 0.75;

test = reshape(y(121:280),8,20);
test2 = test';
test3 = test2(:);

matrix_cl = matrix_cl';

depth = [x(1:120); -test3];
speed = [y(1:120); x(121:280)./((9.81*1)^(1/2))];
z = [z(1:120); matrix_cl(:)];
% 
% depth = [x(1:120)];
% speed = [y(1:120)];
% z = z(1:120);

%depth = [ -y(121:280)];
%speed = [ x(121:280)./((9.81*1)^(1/2))];



x=depth;
y=speed;

xlin=linspace(min(x),max(x),100);
ylin=linspace((min(y)),(max(y)),500);
[X,Y] = meshgrid(xlin,ylin);
Z = griddata(x,y,z,X,Y,'cubic');
Z = Z./0.44;

figure(5)
semilogx(Y(:,13),Z(:,13));
hold on
semilogx(Y(:,31),Z(:,31));
hold on
semilogx(Y(:,83),Z(:,83));
hold on 
yy = spline(A(:,1),A(:,2),ylin);
semilogx(ylin,yy,'--');
hold on
yy = spline(A(:,1),A(:,3),ylin);
semilogx(ylin,yy,'--');
hold on
yy = spline(A(:,1),A(:,4),ylin);
semilogx(ylin,yy,'--');