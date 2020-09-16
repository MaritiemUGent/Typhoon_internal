function [geo] = changenx(geo,input,method)
%changetheta
%   necessary for testcase
if method
	geo.nx=input;
else
	switch(input)
		case 1
			geo.nx=8;
		case 2
			geo.nx=15;
		case 3
			geo.nx=30;
		case 4
			geo.nx=100;
	end
end



end
