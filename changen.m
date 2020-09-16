function [geo] = changen(geo,input)
%changetheta
%   necessary for testcase

switch(input)
	case 1
		geo.ny=10;
		geo.nx=5;
	case 2
		geo.ny=20;
		geo.nx=10;
	case 3
		geo.ny=40;
		geo.nx=20;
	case 4
		geo.ny=6;
		geo.nx=3;
	case 5
		geo.ny=10;
		geo.nx=10;
	case 6
		geo.ny=20;
		geo.nx=20;
	case 7
		geo.ny=40;
		geo.nx=40;
	case 8
		geo.ny=30;
		geo.nx=30;
	case 9
		geo.ny=5;
		geo.nx=10;
	case 10
		geo.ny=10;
		geo.nx=20;
	case 11
		geo.ny=20;
		geo.nx=40;
	case 12
		geo.ny=15;
		geo.nx=30;
end
		


end

