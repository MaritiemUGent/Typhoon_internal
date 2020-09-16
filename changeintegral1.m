function [state] = changeintegral1(state,input)

switch(input)
	case 1 
		state.integral1=10;
	case 2
		state.integral1=25;
	case 3
		state.integral1=50;
	case 4
		state.integral1=100;
	case 5
		state.integral1=200;
	case 6
		state.integral1=500;
	case 7
		state.integral1=1000;


end