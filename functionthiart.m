nu = linspace(-pi/2+0.05,pi/2-0.05,25);

delta_xi = 0.2;
delta_eta = 0.2;
delta_zeta = 0;


f=(delta_eta.*sec(nu)+1i*delta_zeta.*tan(nu))./...
	(delta_xi.*cos(nu)+delta_eta.*sin(nu)+1i.*delta_zeta);

plot(nu,f);
