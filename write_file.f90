	program write_new_file
	implicit none
	integer, allocatable::x(:),y(:),p(:),q(:)
	integer::i,n
	n=10
	allocate(x(n),y(n),p(n),q(n))
  	
	do i=1,n
	x(i)=i+1
	y(i)=i+10
	enddo
!writting data in a file	
	open(unit=11,file="/home/gj/gour_work/data.txt",status="unknown") !works good
	  do i=1,n 
	    write(11,*)x(i),y(i)
	  enddo
	close(11)

	open(unit=13,file="/home/gj/gour_work/data1.txt",status="unknown") !works good
!	  do i=1,n 
	    write(13,*)x,y
!	  enddo
	close(13)
!.................................................

! reading data set from a file
	
	open(unit=12,file="/home/gj/gour_work/data.txt",status="old")   !works good
	  do i=1,n
	    read(12,*)p(i),q(i)
	  enddo
	close(12) 
	
	do i=1,n
	  print*,i,p(i),q(i)
	enddo


	end
