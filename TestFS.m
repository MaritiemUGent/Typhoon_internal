for a=10:10:10
		for b=10:10:160
			figure(4)
			plot(squeeze(nu),real(squeeze(differ(a,b,:))),squeeze(nu),imag(squeeze(differ(a,b,:))));
			grid on
			pause(0.5)
			close all
		end
	end