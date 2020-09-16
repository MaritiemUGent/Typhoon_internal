function [results,lattice,state]=equilibrium2(results,state,geo,lattice,ref)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (C) 1999, 2007 Tomas Melin
%
% This file is part of Tornado
%
% Tornado is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public
% License as published by the Free Software Foundation;
% either version 2, or (at your option) any later version.
%
% Tornado is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied
% warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
% PURPOSE.  See the GNU General Public License for more
% details.
%
% You should have received a copy of the GNU General Public
% License along with Tornado; see the file GNU GENERAL
% PUBLIC LICENSE.TXT.  If not, write to the Free Software
% Foundation, 59 Temple Place -Suite 330, Boston, MA
% 02111-1307, USA.
%
% usage: [RESULTS] = solver8(results,state,geo,lattice,ref)
%
% This function does a static calculation to determine where both force and
% moment balances are zero.
%
% Example:
%
%
%
% Calls:
%
%
% Author: Alec Bague <alec.bague@ugent.be>
% Keywords: Tornado core function
%
% Revision History:
%   Ghent: 11/06/2020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% data = input(' moment around y axis due to sail: ','s');
% if isinptok(data)==1
% 	state.Ms = zeros(3,1);
% 	state.Ms(2,1)=str2num(data);
% end


settings=config('startup');

state.integral1=32;
state.integral2=32;

%% initial set-up of calc

k = 1 ;

[lattice,ref,geo]=fLattice_setup2(geo,state,0);
				stat=1;
results00 = solverloop6(results,1,'1',lattice,state,geo,ref);

FORCE(k,1,:)=results00.FORCE-geo.mass*9.81;
MOMENTS(k,1,:)=results00.MOMENTS+state.Ms(2,1);

%% derivative to z

state.ELA = state.ELA+0.1;

[lattice,ref,geo]=fLattice_setup2(geo,state,0);
				stat=1;
results01 = solverloop6(results,1,'1',lattice,state,geo,ref);

FORCE(k,2,:)=results01.FORCE-geo.mass*9.81;
MOMENTS(k,2,:)=results01.MOMENTS+state.Ms(2,1);

state.ELA = state.ELA-0.1;

%% derivative to theta

state.theta = state.theta + 1*pi/180;

[lattice,ref,geo]=fLattice_setup2(geo,state,0);
				stat=1;
results02 = solverloop6(results,1,'1',lattice,state,geo,ref);

FORCE(k,3,:)=results02.FORCE-geo.mass*9.81;
MOMENTS(k,3,:)=results02.MOMENTS+state.Ms(2,1);



state.theta = state.theta-1*pi/180;



%%

J = [(FORCE(k,2,3)-FORCE(k,1,3))/(0.1) (FORCE(k,3,3)-FORCE(k,1,3))/(1*pi/180); ...
	(MOMENTS(k,2,2)-MOMENTS(k,1,2))/(0.1) (MOMENTS(k,3,2)-MOMENTS(k,1,2))/(1*pi/180)];


A(k,:) = transpose(J^(-1) * [-FORCE(k,1,3); -MOMENTS(k,1,2)]);

inc=1;



while (k<20 && inc>10^(-07))
	
	k=k+1;
	%derivative to z
	
	state.ELA = state.ELA+A(k-1,1);
	
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
				stat=1;
	results01 = solverloop6(results,1,'1',lattice,state,geo,ref);
	
	FORCE(k,2,:)=results01.FORCE-geo.mass*9.81;
	MOMENTS(k,2,:)=results01.MOMENTS+state.Ms(2,1);
	
	
	
	%derivative to theta
	
	state.theta = state.theta + A(k-1,2);
	
	[lattice,ref,geo]=fLattice_setup2(geo,state,0);
				stat=1;
	results02 = solverloop6(results,1,'1',lattice,state,geo,ref);
	
	FORCE(k,3,:)=results02.FORCE-geo.mass*9.81;
	MOMENTS(k,3,:)=results02.MOMENTS+state.Ms(2,1);
	
	FORCE(k,1,:)=FORCE(k,3,:);
	MOMENTS(k,1,:)=MOMENTS(k,3,:);
	
	%%
	
	J = [(FORCE(k,2,3)-FORCE(k-1,1,3))/(A(k-1,1)) (FORCE(k,3,3)-FORCE(k-1,1,3))/(A(k-1,2)); ...
	(MOMENTS(k,2,2)-MOMENTS(k-1,1,2))/(A(k-1,1)) (MOMENTS(k,3,2)-MOMENTS(k-1,1,2))/(A(k-1,2))];


	A(k,:) = transpose(J^(-1) * [-FORCE(k,1,3); -MOMENTS(k,1,2)]);
	
	
	inc = abs(A(k,1))*abs(A(k,2));
	
	


end
state.theta = state.theta + A(k-1,2);
state.ELA = state.ELA+A(k-1,1);

results.stat_eq = [state.Ms(2,1),state.theta, state.ELA]


end








