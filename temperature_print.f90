        program print_temperature
        implicit none
        integer::temp,temp_max
        double precision::T
        	
        temp_max=36	
        T=20.0d0

	do temp=1,temp_max   
          if(temp.le.2)T=T-5.0d0
          if(temp.gt.2.and.temp.le.11)T=T-1.0d0
          if(temp.gt.11.and.temp.le.18)T=T-0.10d0
          if(temp.gt.18.and.temp.le.22)T=T-0.050d0
          if(temp.gt.22.and.temp.le.31)T=T-0.010d0
          if(temp.gt.31.and.temp.le.36)T=T-0.001d0
	
	  print*,temp,T
        enddo
        
        
        
        
        end
