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
state.integral1=128;
state.integral2=128;


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
fname1='ThiartAR10'
load(fname1);
cd(settings.hdir)


cd(settings.sdir)
disp(' ')
ls
%fname='testcase3'
fname='NACA4412'
load(fname);
cd(settings.hdir)



state.integral1=128;
state.integral2=128;

% [lattice,ref,geo]=fLattice_setup2(geo,state,1);
% postproc(lattice,geo,ref)
% 

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
geo=changeny(geo,15,1);
geo.meshtype=1;

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
geo=changenx(geo,8,1);

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



%%	temporary for stability development

% 	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
% 		stat=1;
% 		
% 		results=stability1(results,'1',lattice,state,geo,ref);
% 		

%%


cd(settings.odir)
		fileID = fopen('Depth_Faltinsen2.txt','a');
		fprintf(fileID, ' results.L \t results.D \t Cl \t Cd \t results.sumgamma \t results.sumu1 \t results.sumum \t results.sumuw \t results.meangamma \t results.meanu1 \t results.meanum \t results.meanuw \n');
		fclose(fileID);
		cd(settings.hdir)
		
		state = changedepth(state,2);
		
		Clplot = [1];
		Fcplot = [0];
for fitt=0:1
	state.fitt=fitt;
for m=2:4
	state = changedepth(state,m);
	%geo.meshtype=m;
	for j=1:25
		i=num2str(j);
		n=num2str(m);
		
		if (j<=10)
			state.STW = 3.1321*j*0.1;
		else
			if (j<=15)
			state.STW = 3.1321*((j-10)*0.2+1);
			else
				state.STW = 3.1321*((j-15)+2);
			end
		end
		
		
		[lattice,ref,geo]=fLattice_setup2(geo,state,1);
		stat=1;
		
		results=solverloop6(results,1,i,lattice,state,geo,ref);
		
		Fc = state.STW/(9.81*1)^(1/2);
		Fh = state.STW/(-9.81*state.ELA)^(1/2);
		hc = -state.ELA/geo.c;
		q = 1/2*997*state.STW^2*6*1;
		Cl = results.L/q;
		Cd = results.D/q;
		
		if j==1
			if m==2
			Cl0 = Cl;
			end
		end
		
		cd(settings.odir)
		fileID = fopen('Depth_Faltinsen2.txt','a');
		fprintf(fileID, '%i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \t %i \n', Fc,Fh,hc,...
			results.L,results.D,Cl,Cd,...
			results.sumgamma,results.sumu1,results.sumum,results.sumuw,...
			results.meangamma,results.meanu1,results.meanum,results.meanuw);
		fclose(fileID);
		cd(settings.hdir)
		
		figure(69)
		Clplot = [Clplot; Cl/Cl0];
		Fcplot = [Fcplot; Fc];
		
		semilogx(Fcplot, Clplot);
		xlim([0 15])
		ylim([0 2])
		
		
% 		Wind = results.Wind1;
		
% 		figure(j)	%looks ok
% 		quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),Wind1(:,1),Wind1(:,2),Wind1(:,3));
% 		hold on
% 		quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),lattice.N(:,1),lattice.N(:,2),lattice.N(:,3),'Color','r');
% 		set(gca,'DataAspectRatio',[1,1,1])
% 		filename=strcat(n,i,'quiver');
% 		cd(settings.odir)
% 		savefig(filename)
% 		cd(settings.hdir)
% 		close
% 		
		[void,s1] = size(results.Windy);
		tit1=num2str(Fc); tit2=num2str(hc);
		fig1=figure(1);
		title(strcat('Fc: ',tit1, 'hc: ', tit2))
		set(gcf, 'Position', get(0, 'Screensize'));
		subplot(2,2,1)
		rotate3d on
		colormap(hot);
		fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.gamma(1:s1,1)');
		title(strcat('Fc: ',tit1, 'hc: ', tit2,' - GAMMA PLOT'))
		colorbar('vert')
		axis equal
		
% 		filename=strcat(n,i,'fill');
% 		cd(settings.odir)
% 		savefig(filename)
% 		cd(settings.hdir)
% 		close
		
		subplot(2,2,2)
		rotate3d on
		colormap(hot);
		fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.Windy(1:s1));
		title('Windy plot')
		colorbar('vert')
		axis equal
		
		subplot(2,2,4)
		rotate3d on
		colormap(hot);
		fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.induc(1:s1));
		title('inducy distribution')
		colorbar('vert')
		axis equal
		
% 		filename=strcat(n,i,'fill');
% 		cd(settings.odir)
% 		savefig(filename)
% 		cd(settings.hdir)
% 		close
		
		subplot(2,2,3)
		rotate3d on
		colormap(hot);
		fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.Wavy(1:s1));
		title('Wavy distribution')
		colorbar('vert')
		axis equal
		
		
		
		filename=strcat(num2str(fitt),'-',n,'-',i,'fill');
		cd(settings.odir)
		savefig(filename)
		cd(settings.hdir)
		close(fig1)
		
		
	tc=35;
	%how does element 35 affects all other elements
	fig1=figure(1)
	set(gcf, 'Position', get(0, 'Screensize')-[0 0 200 100]);
	
	subplot(2,4,1)
	quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),results.U1(:,tc,1),results.U1(:,tc,2),results.U1(:,tc,3),'Color','r');
	title(strcat('Fc: ',tit1, 'hc: ', tit2))
	set(gca,'DataAspectRatio',[1,1,1])
	
	subplot(2,4,5)
	colormap(hot);
	fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.u1(:,tc)');
	colorbar('vert')
	h = colorbar;
	set(h, 'ylim', [-0.2 0.2])
	axis equal
	
	subplot(2,4,2)
	quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),results.Um1(:,tc,1),results.Um1(:,tc,2),results.Um1(:,tc,3),'Color','r');
	set(gca,'DataAspectRatio',[1,1,1])
	
	subplot(2,4,6)
	colormap(hot);
	fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.um1(:,tc)');
	colorbar('vert')
	h = colorbar;
	set(h, 'ylim', [-0.2 0.2])
	axis equal
	
	
	subplot(2,4,3)
	quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),results.Uw1(:,tc,1),results.Uw1(:,tc,2),results.Uw1(:,tc,3),'Color','r');
	set(gca,'DataAspectRatio',[1,1,1])
	
	subplot(2,4,7)
	colormap(hot);
	fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.uw1(:,tc)');
	colorbar('vert')
	h = colorbar;
	set(h, 'ylim', [-0.2 0.2])
	axis equal
	
	
	subplot(2,4,4)
	quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),results.TOT(:,tc,1),results.TOT(:,tc,2),results.TOT(:,tc,3),'Color','r');
	set(gca,'DataAspectRatio',[1,1,1])
	
	subplot(2,4,8)
	colormap(hot);
	fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.tot(:,tc)');
	colorbar('vert')
	h = colorbar;
	set(h, 'ylim', [-0.2 0.2])
	axis equal
	
	
	
	filename=strcat(num2str(fitt),'-',n,'-',i,'wave');
	cd(settings.odir)
	savefig(filename)
	cd(settings.hdir)
	
	close(fig1)
	
	end
end
end
% 
% for m=2:2
% 	for j=1:25
% 		i=num2str(j);
% 		n=num2str(m);
% 		
% 		
% 		filename=strcat(n,'-',i,'wave');
% 		cd(settings.odir)
% 		openfig(filename);
% 		cd(settings.hdir)
% 		pause;
% 		close all
% 		
% 		
% 		filename=strcat(n,'-',i,'fill');
% 		cd(settings.odir)
% 		openfig(filename);
% 		cd(settings.hdir)
% 		pause;
% 		close all
% 		
% 	end
% end




% 		i = '1';
% 		[lattice,ref,geo]=fLattice_setup2(geo,state,0);
% 		stat=1;
% 		
% 		results=solverloop5(results,1,i,lattice,state,geo,ref);
% 		
% 		Fc = state.STW/(9.81*1)^(1/2);
% 		Fh = state.STW/(-9.81*state.ELA)^(1/2);
% 		hc = -state.ELA/geo.c;
% 		q = 1/2*997*state.STW^2*6*1;
% 		Cl = results.L/q;
% 		Cd = results.D/q;
% 		
% 		cd(settings.odir)
% 		fileID = fopen('smalltest.txt','a');
% 		fprintf(fileID, '%i \t %i \t %i \t %i \t %i \t %i \t %i \n', Fc,Fh,hc,...
% 			results.L,results.D,Cl,Cd);
% 		fclose(fileID);
% 		cd(settings.hdir)

% state=changespeed(state,2);
% 
% for m=1:10
% 	test = changeintegration(m);
% 	for j=1:19
% 		i=num2str(j);
% 		n=num2str(m);
% 		state=changedepth(state,j);
% 		[lattice,ref,geo]=fLattice_setup2(geo,state,0);
% 		stat=1;
% 		
% 		results=solverloop5(results,1,i,lattice,state,geo,ref,test);
% 		
% 		Fc = state.STW/(9.81*1)^(1/2);
% 		Fh = state.STW/(-9.81*state.ELA)^(1/2);
% 		hc = -state.ELA/geo.c;
% 		q = 1/2*997*state.STW^2*6*1;
% 		Cl = results.L/q;
% 		Cd = results.D/q;
% 		
% 		cd(settings.odir)
% 		fileID = fopen('Depth2.txt','a');
% 		fprintf(fileID, '%i \t %i \t %i \t %i \t %i \t %i \t %i \n', Fc,Fh,hc,...
% 			test(1),test(2),Cl,Cd);
% 		fclose(fileID);
% 		cd(settings.hdir)
% 		
% 		Wind1 = results.Wind1;
% 		
% 		figure((m-1)*19+j)	%looks ok
% 	quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),Wind1(:,1),Wind1(:,2),Wind1(:,3));
% 	hold on
% 	quiver3(lattice.COLLOC(:,1),lattice.COLLOC(:,2),lattice.COLLOC(:,3),lattice.N(:,1),lattice.N(:,2),lattice.N(:,3),'Color','r');
% 	set(gca,'DataAspectRatio',[1,1,1])
% 	filename=strcat(n,i,'quiver');
%   cd(settings.odir)
%   		savefig(filename)
%   cd(settings.hdir)
% 	close
% 	
% 	figure(3*19+((m-1)*19+j))
% rotate3d on 
% colormap(hot);
% fill3(lattice.XYZ(:,:,1)',lattice.XYZ(:,:,2)',lattice.XYZ(:,:,3)',results.gamma(1:50,1)');
% title('Delta cp distribution')
% colorbar('vert')
% axis equal
% filename=strcat(n,i,'fill');
%   cd(settings.odir)
%   		savefig(filename)
%   cd(settings.hdir)
%   close
% 		
% 	end
% end
