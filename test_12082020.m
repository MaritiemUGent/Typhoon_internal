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
fname1='viper_aug2'
load(fname1);
cd(settings.hdir)


cd(settings.sdir)
disp(' ')
ls
%fname='testcase3'
fname='viper_aug2'
load(fname);
cd(settings.hdir)

% tets environment for the equilibrium code, same as done in paper to find
% the root and chech the N-R method

state.Ms(2,1)=-700;

elavation = [];
theta = [];
l=0;
for i = -0.2:-0.1:-0.8
	elavation = [elavation; i];
	state.ELA = i;
	for k = 0.015:0.01:0.045
l=l+1;

state.theta = k;
	
	theta = [theta; k];
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
				stat=1;
	[results_int,lattice]=solver10(results,state,geo,lattice,ref);
  [results01]=coeff_create3(results_int,lattice,state,ref,geo);
	
	FORCE(l,:)=results01.FORCE-geo.mass*9.81;
	MOMENTS(l,:)=results01.MOMENTS+state.Ms(2,1);
	
	end
end

save('test_equi');