ii=0; kk=0;
kkk=0;
for i = -0.2:-0.1:-0.8
	ii = ii+1;
	kkk=0;
	state.ELA = i;
	for k = 0.015:0.01:0.045
		kk=kk+1;
		kkk=kkk+1;
		force(kkk,ii,:) = FORCE(kk,:); mom(kkk,ii,:)= MOMENTS(kk,:);
	end
end