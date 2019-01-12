        program magnetude_complex_numb
        implicit none
        complex*16::z
        double precision::a,b,m
        
        a=2.0d0
        b=3.0d0
        z=cmplx(a,b)
        m=zabs(z)
        print*,m,1/z,"(",Real(z),aimag(z),")",z &
       & *(1/z)
        
        
        
        end	        
	        
	        

