function [geo] = changeny(geo,input,method)
%changetheta
%   necessary for testcase


if method
	geo.ny=input;
else
	switch(input)
		case 1
			geo.ny=10;
		case 2
			geo.ny=20;
		case 3
			geo.ny=30;
		case 4
			geo.ny=40;
		case 5
			geo.ny=60;
			
	end
	
end

end

