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

geo.curved=0;               %boolean value if partition is curved
geo.radius=0;               %curvature radius of partition

geo.foiltheta=0;            %AoA of a particular foil

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

state.theta=0;				%angle of attack [pitch angle of craft]
state.psi=0;				%angle of sideslip
state.phi=0;                %angle of roll (heel)

state.P=0;					%roll angluar rate	
state.Q=0;					%pitch angular rate
state.R=0;					%Yaw angular rate

state.thetadot=0;           %Angle of attack time derivative
state.psidot=0;           %Angle of sidesliptime derivative

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
fname1='NACA4412'
load(fname1);
cd(settings.hdir)


cd(settings.sdir)
disp(' ')
ls
fname='NACA0012'
load(fname);
cd(settings.hdir)

%[lattice,ref,geo]=fLattice_setup2(geo,state,1);



%solverloop5(results,1,'1',lattice,state,geo,ref);



%% vary AoA

%{
for j=1:15
	i=num2str(j);
	geo=changetheta(geo,j-1);
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
	stat=1;
	
	results=solverloop5(results,1,i,lattice,state,geo,ref);
	cd(settings.odir)
	fileID = fopen('foiltheta.txt','a');
	
	fprintf(fileID, '%i \t %i \t %i \n', geo.TW(1,1,1), results.L, results.D);
	fclose(fileID);
	cd(settings.hdir)
  
	
	
end
%}
geo=changetheta(geo,5);




%% vary Ns


%{
for j=1:4
	i=num2str(j);
	geo=changeny(geo,j);
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
	stat=1;
	
	results=solverloop5(results,1,i,lattice,state,geo,ref);
	cd(settings.odir)
	fileID = fopen('Ns.txt','a');
	
	fprintf(fileID, '%i \t %i \t %i \n', geo.ny, results.L, results.D);
	fclose(fileID);
	cd(settings.hdir)
  
	
	
end
%}
geo=changeny(geo,2);


%% vary Nc
%{
for j=1:4
	i=num2str(j);
	geo=changenx(geo,j);
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
	stat=1;
	
	results=solverloop5(results,1,i,lattice,state,geo,ref);
	cd(settings.odir)
	fileID = fopen('Nc.txt','a');
	
	fprintf(fileID, '%i \t %i \t %i \n', geo.nx, results.L, results.D);
	fclose(fileID);
	cd(settings.hdir)
  
	
	
end
%}
geo=changenx(geo,1)

%% vary Depth
%{
for j=1:5
	i=num2str(j);
	state=changedepth(state,j);
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
	stat=1;
	
	results=solverloop5(results,1,i,lattice,state,geo,ref);
	cd(settings.odir)
	fileID = fopen('Depth.txt','a');
	
	fprintf(fileID, '%i \t %i \t %i \n', state.ELA, results.L, results.D);
	fclose(fileID);
	cd(settings.hdir)
  
	
	
end
%}
state=changedepth(state,3);

%% vary speed
%{
for j=1:8
	i=num2str(j);
	state=changespeed(state,j);
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
	stat=1;
	
	results=solverloop5(results,1,i,lattice,state,geo,ref);
	cd(settings.odir)
	fileID = fopen('speed.txt','a');
	
	fprintf(fileID, '%i \t %i \t %i \n', state.STW, results.L, results.D);
	fclose(fileID);
	cd(settings.hdir)
  
	
	
end
%}
state=changespeed(state,3);

%% change number of nodes
%{
for j=4:12
	i=num2str(j);
	geo=changen(geo,j);
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
	stat=1;
	
	results=solverloop5(results,1,i,lattice,state,geo,ref);
	cd(settings.odir)
	fileID = fopen('N.txt','a');
	
	fprintf(fileID, '%i \t %i \t %i \t %i \n', geo.nx, geo.ny, results.L, results.D);
	fclose(fileID);
	cd(settings.hdir)
  
	
	
end
%}
%{
for j=1:13
	i=num2str(j);
	geo=changefoil(geo,j);
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
	stat=1;
	
	results=solverloop5(results,1,i,lattice,state,geo,ref);
	cd(settings.odir)
	fileID = fopen('N.txt','a');
	
	fprintf(fileID, '%s \t %i \t %i \t %i \n', geo.foi, geo.nx, results.L, results.D);
	fclose(fileID);
	cd(settings.hdir)
  
	
	
end
%}

%{
geo=changenx(geo,1);
geo=changefoil(geo,2);
%% vary Depth, check for influence of Fc
cd(settings.odir)
fileID = fopen('Depth2.txt','wt');

fprintf(fileID, 'Fc \t Fh \t h/c \t L \t D \t Cl \t Cd \n');
fclose(fileID);
cd(settings.hdir)
%}

for m=1:3
	state=changespeed(state,m);
	for j=1:19
		i=num2str(j);
		state=changedepth(state,j);
		[lattice,ref,geo]=fLattice_setup2(geo,state,0);
		stat=1;
		
		results=solverloop5(results,1,i,lattice,state,geo,ref);
		
		Fc = state.STW/(9.81*1)^(1/2);
		Fh = state.STW/(-9.81*state.ELA)^(1/2);
		hc = -state.ELA/geo.c;
		q = 1/2*997*state.STW^2*6*1;
		Cl = results.L/q;
		Cd = results.D/q;
		
		cd(settings.odir)
		fileID = fopen('Depth2.txt','a');
		fprintf(fileID, '%i \t %i \t %i \t %i \t %i \t %i \t %i \n', Fc,Fh,hc,...
			results.L,results.D,Cl,Cd);
		fclose(fileID);
		cd(settings.hdir)
		
		
		
	end
end
