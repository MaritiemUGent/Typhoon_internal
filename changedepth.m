function [state] = changedepth(state,input)
%changetheta
%   necessary for testcase

switch(input)
	case 1
		state.ELA=-1;
	case 2
		state.ELA=-1.5;
	case 3 
		state.ELA=-2;
	case 4
		state.ELA=-2.5;
	case 5
		state.ELA=-3;
	case 6
		state.ELA=-3.5;
	case 7
		state.ELA=-4;
	case 8
		state.ELA=-4.5;
	case 9
		state.ELA=-5;
	case 10
		state.ELA=-0.5;
	case 11
		state.ELA=-0.675;
	case 12
		state.ELA=-0.825;
	case 13
		state.ELA=-1.25;
	case 14
		state.ELA=-1.75;
	case 15
		state.ELA=-1.5;
	case 16
		state.ELA=-1.6;
	case 17 
		state.ELA=-1.7;
	case 18
		state.ELA=-1.8;
	case 19
		state.ELA=-1.9;
	case 20
		state.ELA=-2;
	case 21
		state.ELA=-2.1
	case 22
		state.ELA=-2.2;
	case 23
		state.ELA=-2.3;
	case 24
		state.ELA=-2.4;
	case 25
		state.ELA=-2.5
	case 26
		state.ELA=-2.6;
end
		


end

