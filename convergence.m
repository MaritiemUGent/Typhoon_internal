settings=config('startup');

cd(settings.odir)
A=load('IntegralConvergence.txt');
cd(settings.hdir)


int1 = A(:,1); int2 = A(:,2);
frc = A(:,3); hc = A(:,4);
Cl = A(:,5); Cd = A(:,6);

[B,I]=sort(int1);
int1_2 = int1(I); int2_2 = int2(I);
frc_2 = frc(I); hc_2 = hc(I);
Cl_2 = Cl(I); Cd_2 = Cd(I);

I10=find(int2_2==10);
I25=find(int2_2==25);
I50=find(int2_2==50);
I100=find(int2_2==100);
I200=find(int2_2==200);

figure(1)
plot3(frc_2(I100),int1_2(I100),Cl_2(I100),'-o','Color','r')
hold on
plot3(frc_2(I200),int1_2(I200),Cl_2(I200),'-o','Color','b')
xlabel('frc'); ylabel('int1'); 

