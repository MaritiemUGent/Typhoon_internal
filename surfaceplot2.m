

load('output\cl3.mat');
load('output\cl.mat');
load('output\x2.mat');
load('output\y2.mat');
load('output\z2.mat');



matrix_cl=  matrix_cl(1:8,1:3);
matrix_cl = matrix_cl';


depth = x
speed = y./((9.81*1)^(1/2));

% 
% depth = [x(1:120)];
% speed = [y(1:120)];
% z = z(1:120);

%depth = [ -y(121:280)];
%speed = [ x(121:280)./((9.81*1)^(1/2))];



x=depth;
y=speed;

xlin=linspace(min(x),max(x),100);
ylin=logspace(log(min(y)),log(max(y)),500);
[X,Y] = meshgrid(xlin,ylin);
Z = griddata(x,y,z,X,Y,'cubic');

figure(1)
s1=surf(X,Y,Z);
xlabel('h/c'); ylabel('Fr_c'); zlabel('Cl');
set(gca, 'YScale', 'log');
s1.FaceAlpha=0.5;
set(s1, 'edgecolor','none')

figure(5)
plot(X(307,:),Z(307,:));
hold on
plot(X(355,:),Z(355,:));
hold on
plot(X(410,:),Z(410,:));
% hold on
% plot3(X(199,:),ones(size(X(199,:)))*Y(199,1),Z(199,:), '--r', 'LineWidth',3);
% hold on 
% plot3(X(217,:),ones(size(X(217,:)))*Y(217,1),Z(217,:), '--r', 'LineWidth',3);
% hold on
% plot3(X(237,:),ones(size(X(237,:)))*Y(237,1),Z(237,:), '--r', 'LineWidth',3)

% hold on
% plot3(ones(size(X(:,13)))*X(1,13),Y(:,13),Z(:,13), 'LineWidth',3);
% hold on
% plot3(ones(size(X(:,31)))*X(1,31),Y(:,31),Z(:,31), 'LineWidth',3);
% hold on
% plot3(ones(size(X(:,83)))*X(1,83),Y(:,83),Z(:,83), 'LineWidth',3);
% 

% plot3(ones(size(Y(199,:)))*X(199,1),Y(199,:),Z(199,:), '--r', 'LineWidth',3)
% plot3(x(10,:), ones(size(x(:,10)))*y(10,1), z(10,:), '--r', 'LineWidth',3)
% plot3(x,y,z,'.','MarkerSize',15);

%  figure(2)
%  surf(Frc,depth,matrix_cl);
%  ylabel('h/c'); xlabel('Fr_c'); zlabel('Cl');
%  set(gca, 'XScale', 'log');
