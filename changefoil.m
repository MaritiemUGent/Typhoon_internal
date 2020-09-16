function [geo] = changefoil(geo,input)
%changetheta
%   necessary for testcase

switch(input)
	case 1
		geo.nx=15;
		geo.foil(1,1,1)={'0012'};
		geo.foil(1,1,2)={'0012'};
		geo.foi='0012';
	case 2
		geo.foil(1,1,1)={'4412'};
		geo.foil(1,1,2)={'4412'};
		geo.foi='0006';
	case 3
		geo.foil(1,1,1)={'1212'};
		geo.foil(1,1,2)={'1212'};
		geo.foi='1212';
	case 4
		geo.foil(1,1,1)={'1412'};
		geo.foil(1,1,2)={'1412'};
		geo.foi='1412';
	case 5
		geo.foil(1,1,1)={'2112'};
		geo.foil(1,1,2)={'2112'};
		geo.foi='2112';
	case 6
		geo.foil(1,1,1)={'2212'};
		geo.foil(1,1,2)={'2212'};
		geo.foi='2212';
	case 7
		geo.foil(1,1,1)={'2412'};
		geo.foil(1,1,2)={'2412'};
		geo.foi='2412';
	case 8
		geo.foil(1,1,1)={'2406'};
		geo.foil(1,1,2)={'2406'};
		geo.foi='2406';
	case 9
		geo.nx=5;
	case 10 
		geo.nx=10;
	case 11
		geo.nx=20;
	case 12
		geo.nx=30;
	case 13
		geo.nx=50;
end
		


end

