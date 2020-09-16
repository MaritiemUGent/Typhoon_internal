clear
%splash                      %Display spash screen     
clear
%initializing variables


%% geometry values
geo.fnx=0;				    %number of panels on flap chords (2d array)
geo.ny=1;					%number of panels in span (2d array)
geo.nx=1;					%number of panels on chord (2d array)
geo.fsym=0;				    %flap deflection symmetry boolean bit  (2d array)
geo.fc=0;					%flap chord in percent of wingchord (2d array)
geo.flapped=[0];			    %flapped partition(wing part) boolean bit (2d array)
geo.TW(:,:,1)=0;	    	%partition twist (3d array)<1 inboard, 2 outboard>
geo.TW(:,:,2)=0;
geo.foil(:,:,1)={'0'};		    %Partition airfoils (3d array)	
geo.foil(:,:,2)={'0'};		    %1 inboard, 2 outboard
geo.T=1;					%Taper ratio (2d array)
geo.SW=0;					%Sweep (2d array)
geo.c=1;					%Root chord (2d array)
geo.dihed=0;				%Dihedral (2d array)
%geo.sub=0;					%parameter that contains value of -1 (below), 0 (partly below), +1(above)


geo.curved=0;               %boolean value if partition is curved
geo.radius=0;               %curvature radius of partition

geo.foiltheta=0;            %AoA of a particular foil

geo.transl=0;


geo.b=1;					%span(distance root->tip chord) (2d array)
geo.symetric=1;			    %Wing symmetry boolean bit (2d array)
geo.startx=0;		    	%Partition starting coordinate (2d array)
geo.starty=0;		    	% ---"----
geo.startz=0;		    	% ---"----
geo.nwing=1;				%number of wings (scalar)
geo.nelem=1;				%number of partitions on each wing (1d array)
geo.flap_vector=0;          %Flap deflection vector 
geo.ref_point=[0 0 0];      %System reference point
geo.CG=[0 0 0];             %System center of gravity (around which all rotations occur)

geo.mass=0;


%% state values
state.STW=0;                %Speed Trough Water

state.U=0;					%these variables are created for the stability derivatives
state.V=0;
state.W=0;					

state.theta=0;				%angle of attack [pitch angle of craft]
state.psi=0;				%angle of sideslip
state.phi=0;                %angle of roll (heel)

state.P=0;					%roll angluar rate	
state.Q=0;					%pitch angular rate
state.R=0;					%Yaw angular rate

state.pdot=0;           %Angle of attack time derivative
state.qdot=0;           %Angle of sidesliptime derivative
state.rdot=0;			%Angle of roll derivative

state.ELA=0;                %elavation, meters.
state.rho=997;              %Water density, kg/m^3.

state.pgcorr=0;             %Prandtl-Glauert compressibillity correction.

lattice.XYZ=0;				%panel corner matrix (2d array)
lattice.COLLOC=0;           %collocation point matrix
lattice.VORTEX=0;           %Vortex sling cornerpoint position matrix
lattice.N=0;                %Airfoil collocation point normal direction matrix


%% reference values

ref.S_ref=0;                %reference area;
ref.C_mac=0;                %mean aerodynamic choord
ref.mac_pos=0;              %start position of mac
ref.C_mgc=0;                %mean geometric chord
ref.b_ref=0;                %reference span

results.dwcond=0;
settings=config('startup'); %setting directories


cd(settings.acdir)
ls
fname1='XieAR6'
load(fname1);
cd(settings.hdir)


cd(settings.sdir)
disp(' ')
ls
%fname='testcase3'
fname='NACA4412'
load(fname);
cd(settings.hdir)





geo=changetheta(geo,5);
geo=changenx(geo,10,1);
geo=changeny(geo,20,1);
geo.meshtype=1;
state=changedepth(state,3);
state=changespeed(state,3);
state.integral1=50;
state.integral2=100;
state.fitt=0;

depth = zeros(8,1);
speed = zeros(20,1);
Frc = zeros(20,1);
matrix_cl = zeros(8,20);


for diepte=1:9
	state = changedepth(state,diepte);
	depth(diepte,1) = state.ELA;
	for snelheid=1:3
		
		switch snelheid
			case 1
				state.STW=0.7*(9.81)^(1/2);
			case 2
				state.STW=1*(9.81)^(1/2);
			case 3
				state.STW=1.5*(9.81)^(1/2);
		end
		
% 		s = snelheid;
% 		if s <=10
% 			state.STW = s*0.2*3.13;
% 		else
% 			state.STW = 2*3.13 + ((s-10)*3.13*1);
% 		end
% 		
% 		if (diepte==1)
% 			speed(snelheid,1) = state.STW ;
% 		end
		
		i=num2str(diepte);
		n=num2str(snelheid);
		
		[lattice,ref,geo]=fLattice_setup2(geo,state,0);
		stat=1;
		
		results=solverloop6(results,1,i,lattice,state,geo,ref);
		
		Fc = state.STW/(9.81*1)^(1/2);
		Fh = state.STW/(-9.81*state.ELA)^(1/2);
		hc = -state.ELA/geo.c;
		q = 1/2*997*state.STW^2;
		S = geo.c*geo.b;
		Cl = results.L/(q*S);
		Cd = results.D/(q*S);
		
		x((diepte-1)*3+snelheid,1) = Fc;	
		y((diepte-1)*3+snelheid,1) = hc;   
		z((diepte-1)*3+snelheid,1) = Cl;
		
		if (diepte==1)
			Frc(snelheid,1) = Fc;
		end
		
		matrix_cl(diepte,snelheid) = Cl;
		
		cd(settings.odir)
		fileID = fopen('SurfPlot_XIE.txt','a');
		
		fprintf(fileID, '%i \t %i \t %i \t %i \n', Fc, hc, Cl, Cd);
		fclose(fileID);
		cd(settings.hdir)
		
	end
	
end





for diepte=9:14
	d=diepte-8;
	state = changedepth(state,diepte);
	depth2(diepte,1) = state.ELA;
	for snelheid=1:20
		s = snelheid;
		if s <=20
			state.STW = s*0.1*3.13+0.05*3.13;
		else
			state.STW = 2*3.13 + ((s-10)*3.13*1);
		end
		
		if (diepte==1)
			speed(snelheid,1) = state.STW ;
		end
		
		
		
		i=num2str(diepte);
		n=num2str(snelheid);
		
		[lattice,ref,geo]=fLattice_setup2(geo,state,0);
		stat=1;
		
		results=solverloop6(results,1,i,lattice,state,geo,ref);
		
		Fc = state.STW/(9.81*1)^(1/2);
		Fh = state.STW/(-9.81*state.ELA)^(1/2);
		hc = -state.ELA/geo.c;
		q = 1/2*997*state.STW^2;
		S = geo.c*geo.b;
		Cl = results.L/(q*S);
		Cd = results.D/(q*S);
		
		x2((d-1)*20+s,1) = Fc;	
		y2((d-1)*20+s,1) = hc;   
		z2((d-1)*20+s,1) = Cl;
		
		if (diepte==1)
			Frc2(snelheid,1) = Fc;
		end
		
		matrix_cl2(diepte,snelheid) = Cl;
		
		cd(settings.odir)
		fileID = fopen('SurfPlot.txt','a');
		
		fprintf(fileID, '%i \t %i \t %i \t %i \n', Fc, hc, Cl, Cd);
		fclose(fileID);
		cd(settings.hdir)
		
	end
	
end


x_0 = []; y_0 = [];
for i=1:length(speed)
	y_0 = [y_0; depth];
end
for i=1:length(depth)
	x_0 = [x_0; speed];
end

x = [x ; x2]; y = [y ; y2];
z = [z ; z2];

xlin=linspace(min(x),max(x),100);
ylin=linspace(min(y),max(y),100);
[X,Y] = meshgrid(xlin,ylin);
Z = griddata(x,y,z,X,Y,'cubic');

figure(1)
s1=surf(X,Y,Z);
ylabel('h/c'); xlabel('Fr_c'); zlabel('Cl');
set(gca, 'XScale', 'log');
s1.FaceAlpha=0.5;
plot3(x,y,z,'.','MarkerSize',15);

figure(2)
surf(Frc,depth,matrix_cl);
ylabel('h/c'); xlabel('Fr_c'); zlabel('Cl');
set(gca, 'XScale', 'log');
