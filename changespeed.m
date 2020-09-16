function [state] = changespeed(state,input)
%changetheta
%   necessary for testcase

switch(input)
	case 1
		state.STW=3.1321*0.1;
	case 2
		state.STW=3.1321*0.6;
	case 3
		state.STW=3.1321*1.4;
	case 4
		state.STW=3.1321*10;
	case 5
		state.STW=3.13*2;
	case 6
		state.STW=3.13*3;
	case 7
		state.STW=3.13*9;
	case 8
		state.STW=3.13*0.2;
	case 9
		state.STW=3.13*0.5;
	case 10
		state.STW=3.13*0.6;
	case 11
		state.STW=3.13*1.16;
	case 12
		state.STW=3.13*1.33;
end
		


end
