	program
	 		
	if((ky.gt.-kx+(pi/2)).and.(ky.gt.kx-(pi/2)).and.(ky.lt.-kx+(3*pi/2)).and.(ky.lt.kx+(pi/2)))then
	 B=B+
	endif
	
	if((ky.gt.-kx+(pi/2)).and.(ky.gt.kx+(pi/2)))then
	  c=c+
	endif	

	if((ky.lt.-kx-(pi/2)).and.(ky.lt.kx-(pi/2)))then
	  G=G+
	endif
	
	if((ky.gt.-kx-(pi/2)).and.(ky.gt.kx+(pi/2)).and.(ky.lt.-kx+(pi/2)).and.(ky.lt.kx+(3*pi/2)))then
	D=D+
	endif

	if((ky.lt.kx-(pi/2)).and.(ky.gt.-kx+(pi/2)))then
	I=I+
	endif
	
	if((ky.lt.-kx-(pi/2)).and.(ky.gt.kx+(pi/2)))then
	E=E+
	endif


	C1=c+G
	I1=I+E

	end
