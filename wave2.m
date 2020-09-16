function [vw, Vw] = wave2(lattice, geo, state)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[void, m, void]=size(lattice.VORTEX);

[s1 s2] = size(lattice.COLLOC); 

lemma=ones(1,s1);
var.lemma = lemma;
%gamma_h = gamma(1:s1,:);

var.kappa0= 9.81/((state.STW)^2);


var.xi(:,:,1) = lattice.VORTEX(:,m/2,1)*lemma;
var.eta(:,:,1) = lattice.VORTEX(:,m/2,2)*lemma;
var.zeta(:,:,1) = lattice.VORTEX(:,m/2,3)*lemma;
var.xi(:,:,2) = lattice.VORTEX(:,m/2+1,1)*lemma;
var.eta(:,:,2) = lattice.VORTEX(:,m/2+1,2)*lemma;
var.zeta(:,:,2) = lattice.VORTEX(:,m/2+1,3)*lemma;
var.x = (lattice.COLLOC_m(s1+1:2*s1,1)*lemma)';
var.y = (lattice.COLLOC_m(s1+1:2*s1,2)*lemma)';
var.z = (lattice.COLLOC_m(s1+1:2*s1,3)*lemma)';

mN(:,:,1)=lattice.N_m(s1+1:2*s1,1)*lemma;
mN(:,:,2)=lattice.N_m(s1+1:2*s1,2)*lemma;
mN(:,:,3)=lattice.N_m(s1+1:2*s1,3)*lemma;

var.nxi(:,1) = lattice.VORTEX(:,m/2,1);
var.neta(:,1) = lattice.VORTEX(:,m/2,2);
var.nzeta(:,1) = lattice.VORTEX(:,m/2,3);
var.nxi(:,2) = lattice.VORTEX(:,m/2+1,1);
var.neta(:,2) = lattice.VORTEX(:,m/2+1,2);
var.nzeta(:,2) = lattice.VORTEX(:,m/2+1,3);
var.nx = (lattice.COLLOC(:,1));
var.ny = (lattice.COLLOC(:,2));
var.nz = (lattice.COLLOC(:,3));






Vw = quadrature(-pi/2,pi/2,var);


vw=sum(Vw.*mN,3);

% uw = integral(:,1);
% vw = integral(:,2);
% ww = integral(:,3);
% 
% 
% Vw = [uw vw ww];

end


function [integral] = quadrature(a, b, var)

[Nu, W] = lgwt(100,a,b);
nu=Nu';
w=W';

f = ftion(nu,var) ;

[a b c] = size(f);

for j=1:c
	ix(:,:,j) = imag(f(:,:,j)).*cos(nu(j));
	iy(:,:,j) = imag(f(:,:,j)).*sin(nu(j));
	iz(:,:,j) = real(f(:,:,j));
	
end



for j=1:c
Ix(:,:,j)=(ix(:,:,j).*w(j));
Iy(:,:,j)=(iy(:,:,j).*w(j));
Iz(:,:,j)=(iz(:,:,j).*w(j));
end

Ix = -1/(2*pi).*sum(Ix,3);
Iy = -1/(2*pi).*sum(Iy,3);
Iz = -1/(2*pi).*sum(Iz,3);
%is the minus sign correct?


integral(:,:,1) = Ix;
integral(:,:,2) = Iy;
integral(:,:,3) = Iz;
 





end

function [f] = ftion(nu,var)

[s1, s2] =size(nu);

for j=1:s2

	pre(:,:,j) = ((var.eta(:,:,2)-var.eta(:,:,1)).*sec(nu(j))+1i.*(var.zeta(:,:,2)-var.zeta(:,:,1)).*tan(nu(j)))./...
			((var.xi(:,:,2)-var.xi(:,:,1)).*cos(nu(j))+(var.eta(:,:,2)-var.eta(:,:,1)).*sin(nu(j))+...
			1i.*(var.zeta(:,:,2)-var.zeta(:,:,1)));
end
	
		
	differ = integrand1(nu,var,2,s2)-integrand1(nu,var,1,s2);
	
	f = pre.*differ;
	
% 	for a=10:10:160
% 		for b=10:10:160
% 			figure(4)
% 			plot(squeeze(nu),real(squeeze(f(a,b,:))),squeeze(nu),imag(squeeze(f(a,b,:))));
% 			grid on
% 			pause(0.5)
% 			close all
% 		end
% 	end

end

function [J] = integrand1(nu,var,rl,size)

om = omega(nu,var,rl,size);

% t= linspace(0,5,100);

for j=1:size
	
	inte(:,:,j) = integrand4(nu(j),var,rl,om(:,:,j));
	
% 	part11(j) = Kappanu(nu(j),var);
% 	
% 	part12(:,:,j) = (1i*om(:,:,j));
% 	
% 	part13(:,:,j) = exp(Kappanu(nu(j),var).*(1i*om(:,:,j)));
% 	
% 	part14(:,:,j) = var.z+var.zeta(:,:,rl);
% 	
% 	part15(:,:,j) = exp(Kappanu(nu(j),var).*((var.z+var.zeta(:,:,rl))+1i*om(:,:,j)));
% 	
% 	part2(:,:,j) = 1/pi.*(1./((var.z+var.zeta(:,:,rl))+1i*om(:,:,j)) - ...
% 		Kappanu(nu(j),var)*inte(:,:,j));

	
	J(:,:,j) = ((-2*1i).*heaviside(om(:,:,j)).*Kappanu(nu(j),var).*...
		exp(Kappanu(nu(j),var).*((var.z+var.zeta(:,:,rl))+1i*om(:,:,j)))+...
		1/pi.*(1./((var.z+var.zeta(:,:,rl))+1i*om(:,:,j)) - ...
		Kappanu(nu(j),var)*inte(:,:,j)));

	%%%% ???? is it zeta plus z or is it zeta minus z and why?
end


	
%% TEST - this code is for visualising the different parts of FS formula which lead to instabilities	
% 	for a=1:10:50
% 		for b=1:10:50
% 			figure(4)
% 			plot(squeeze(nu),real(squeeze(part11(:))),squeeze(nu),imag(squeeze(part11(:))));
% 			grid on
% 			pause(1)
% 			close all
% 			
% 			figure(5)
% 			plot(squeeze(nu),real(squeeze(part12(a,b,:))),squeeze(nu),imag(squeeze(part12(a,b,:))));
% 			grid on
% 			pause(1)
% 			
% 			
% 			figure(6)
% 			plot(squeeze(nu),real(squeeze(part13(a,b,:))),squeeze(nu),imag(squeeze(part13(a,b,:))));
% 			grid on
% 			pause(1)
% 			close all
% 			
% 			
% 			
% % 			figure(3)
% % 			plot(squeeze(nu),real(squeeze(inte(a,b,:))),squeeze(nu),imag(squeeze(inte(a,b,:))));
% % 			grid on
% % 			pause(0.5)
% % 			close all
% % 			%one singularity
% 		end
% 	end
	
	
	

end

function [I] = integrand2(nu,var,rl,om)
% as described in Hess and Smith, 6 degree polynom, highly oscilatory

	m1=0.23721365; m2=0.020654300; m3=-0.00076329700; m4=0.0000097687007;
	n1=-1.49545886; d1=-0.76273617; n2= 0.041806426; d2=- 0.28388363;
	n3=-0.03000591; d3= -0.066786033; n4= 0.0019387339; d4= 0.0112982719;
	n5=-0.00051801555; d5=-0.00087008610; d6=0.00029892040;
	
	B = Kappanu(nu,var).*((var.z+var.zeta(:,:,rl))+1i.*om);
	gamma = 0.5772156649;
	
	[s1, s2, s3] = size(B);
	
	M = -(ones(s1,s2,s3)+m1.*B+m2.*(B.^2)+m3.*(B.^3)+m4.*((var.xi(:,rl)).^4)).*log(B);
	N = -gamma.*(0.99999207.*ones(s1,s2,s3)+n1.*B+n2.*(B.^2)+n3.*((var.z).^3)+n4.*(B.^4)+n5.*(B.^5));
	D = 1+d1.*B  + d2.*(B.^2) + d3.*(B.^4) + d4.*(B.^4) + d5.*(B.^5) + d6.*(B.^6);
	
	I = (M+N)./D;

end


function [I] = integrand3(nu,var,rl,om)
	B = Kappanu(nu,var).*((var.z+var.zeta(:,:,rl))+1i.*om);
	
	[Tu, W] = lgwt(10000,0,100);
	t=Tu';
	w=W';
	
	
	[s1, s2] =size(t);

	for j=1:s2
		II(:,:,j) = exp(-t(j))./(t(j)+B(:,:));
	end
	
	for j=1:s2
		I(:,:,j)=(II(:,:,j).*w(j));
	end
	I = sum(I,3);

end


function [II] = integrand4(nu,var,rl,om)
	B = Kappanu(nu,var).*((var.z+var.zeta(:,:,rl))+1i.*om);
	
	
	
	
	
	[Tu1, W1] = lgwt(80,0,5);
	[Tu2,W2] = lgwt(20,5,10000);
	tu1=Tu1';
	w1=W1';
	tu2=Tu2';
	w2=W2';
	
	tu = [tu1 tu2];
	w = [w1 w2];
	
	[s1, s2] =size(tu);

	for j=1:s2
		III(:,:,j) = exp(-tu(j))./(tu(j)+B(:,:));
	end
	
	for j=1:s2
		II(:,:,j)=(III(:,:,j).*w(j));
	end
	II = sum(II,3);
	
%% TEST - this code is for visualising the different parts of FS formula which lead to instabilities	

% 	for a=1:50
% 		for b=1:50
% 			figure(4)
% 			plot(squeeze(tu1),real(squeeze(III(a,b,1:80))),squeeze(tu1),imag(squeeze(III(a,b,1:80))));
% 			grid on
% 			pause(0.5)
% 			close all
% 		end
% 	end
	

end

function [om] = omega(nu,var,rl,size)


for j=1:size
	om(:,:,j) = (var.x-var.xi(:,:,rl)).*cos(nu(j))+(var.y-var.eta(:,:,rl)).*sin(nu(j));
end

end

function [kappanu] = Kappanu(nu,var)

	kappanu = var.kappa0.*(sec(nu)).^2;

end


