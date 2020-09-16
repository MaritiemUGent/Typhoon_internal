function [state] = changeintegral2(state,input)

switch(input)
	case 1 
		state.integral2=10;
	case 2
		state.integral2=25;
	case 3
		state.integral2=50;
	case 4
		state.integral2=100;
	case 5
		state.integral2=200;
	case 6
		state.integral2=500;
	case 7
		state.integral2=1000;


end