function [test] = changeintegration(m)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
switch(m)
	case 1
		test=[10,10];
	case 2
		test=[10,50];
	case 3
		test=[10,100];
	case 4
		test=[50,10];
	case 5
		test=[100,10];
	case 6
		test=[100,100];
	case 7
		test=[50,50];
	case 8
		test=[100,100];
	case 9
		test=[1000,10];
	case 10
		test=[10,1000];
end
end

