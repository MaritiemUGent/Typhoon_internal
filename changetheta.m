
function [geo] = changetheta(geo,input)
%changetheta
%   necessary for testcase

if (input<=15)
	geo.TW(1,1,1)=input*pi/180;
	%geo.TW(1,1,2)=input*180/pi;
else
	switch (input)
		case 16
			geo.TW(1,1,1)=20*pi/180;
		case 17
			geo.TW(1,1,1)=25*pi/180;
		case 18
			geo.TW(1,1,1)=30*pi/180;
	end
end

end

