	program reading_pathname
	implicit none
	integer::i,n
	integer, allocatable::a(:)
	character(200)::path
	n=5
	allocate(a(n))
	open(unit=21,file="input_file.txt",status="unknown")
	 read(21,'(A)')path      ! (for reading of character '(A)' should be used instead of *)           !works good
	close(21)

	write(*,*)"path=",path
	
	open(32,file=trim(adjustl(path))//"data.txt",status="unknown")
	do i=1,n                                                   !works good
	read(32,*)a(i)
	print*,a(i)
	enddo
	close(32)


	end

!the functions "trim" and "ADJUSTL" move the content of string to the left to remove any leading whitespaces and then cut all 
!trailing whitespace

!*** I have checked that without "adjustl" trim works fine 
