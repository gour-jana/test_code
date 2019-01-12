     program when
      integer*4 today(3), now(3)
      call idate(today)   ! today(1)=day, (2)=month, (3)=year
      call itime(now)     ! now(1)=hour, (2)=minute, (3)=second
      write ( 1000, 1000 )today(3),today(2), today(1), now
 1000 format ( 'Date: ', i4.4, '/', i2.2, '/', i2.2, '; time: ',&
     &         i2.2, ':', i2.2, ':', i2.2 )

	open(unit=459,file="running_date-time.txt",status="unknown")
	write(459,1000)today(3),today(2),today(1), now
	close(459)
      stop
      end
