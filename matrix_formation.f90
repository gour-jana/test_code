	program matrix_form
	  implicit none
	  double precision, allocatable:: A(:,:),B(:,:),C(:,:)
	  integer::i,j,k,d,c1,c2
	  d=4
	  allocate(A(d,d),B(d,d),C(d,2*d))
	  k=0	
	  A=0.0
	  B=0.0
	  C=0.0
	  do i=1,d
	    do j=1,d
	      k=k+1
	      A(i,j)=k
	      B(i,j)=10+k
	!      write(12,*)i,j,A(i,j)
	    enddo
	  enddo
      !    A=transpose(A)
	  do i=1,d 
	   write(12,*)(A(i,j),j=1,d)
	    write(13,*)(B(i,j),j=1,d)
	  enddo
	  
	  c1=0
	  c2=0
	  do i=1,2*d  !coloumn
	    do j=1,d  !row
	    
	      if(mod(i,2).ne.0)then
                if(j.eq.1)c1=c1+1
                C(j,i)=A(j,i-c2)
	      endif
	      if(mod(i,2).eq.0)then
                if(j.eq.2)c2=c2+1
                C(j,i)=B(j,i-c1)
	      endif
	      write(14,*)j,i,C(j,i)
	    enddo
	  
	  enddo
	
	end
