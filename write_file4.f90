    	program write_new_file
	implicit none
	integer, allocatable::x(:),y(:),p(:),q(:)
	integer::i,n,k
	character(100)::fname
        real ::t
	n=10
	allocate(x(n),y(n),p(n),q(n))
  	
	do k=1,10
        t=0.1*k
	do i=1,n
	x(i)=i+1+k
	y(i)=i+10+k
	enddo
	
	write(fname,"(a,I0,a)")"var_",t,".txt"	
	open(unit=11,file=fname,status="unknown") !works good
	  do i=1,n 
	    write(11,*)x(i),y(i)
	  enddo
	close(11)
	
	enddo

	end
