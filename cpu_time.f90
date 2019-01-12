program test_cpu_time
    real :: start, finish
    call cpu_time(start)
        ! put code to test here
    call cpu_time(finish)
    print '("Time = ",f6.3," seconds.")',finish-start


    open(unit=21,file="cpu_time.txt",status="unknown")
    write(21,'("Time = ",f16.8," seconds.")')finish-start
    close(21)

end program test_cpu_time
