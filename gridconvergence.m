settings=config('startup');

cd(settings.odir)
A=load('GridConvergence.txt');
cd(settings.hdir)


nx = A(:,2); ny = A(:,1);
frc = A(:,3); hc = A(:,4);
Cl = A(:,5); Cd = A(:,6);

[B,I]=sort(ny);
ny_2 = ny(I); nx_2 = nx(I);
frc_2 = frc(I); hc_2 = hc(I);
Cl_2 = Cl(I); Cd_2 = Cd(I);

y10=find(ny_2==10);
y20=find(ny_2==20);
y30=find(ny_2==30);
y40=find(ny_2==30);


x8=find(nx_2==8);
x15=find(nx_2==15);
x30=find(nx_2==30);


figure(1)
a=x8;
plot3(frc_2(a),ny_2(a),Cl_2(a),'-o','Color','r')
hold on
b=x30
plot3(frc_2(b),ny_2(b),Cl_2(b),'-o','Color','b')
xlabel('frc'); ylabel('nx'); 

