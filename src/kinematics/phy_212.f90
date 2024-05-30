! @brief   : Pendulum in 2D plane
! @author  : Konstantinos N. Anagnostopoulos 
! @date    : 2014
! @sources : Computational Physics 
program main
    ! Declaration of variables
    implicit none
    real :: l,x,y,vx,vy,t,t0,tf,dt
    real :: theta,theta0,dtheta_dt,omega
    real, parameter :: PI=3.1415927, g=9.81
    ! Inputs
    print *,"# Enter l:"
    read  *,l
    print *,"# Enter theta0:"
    read  *,theta0
    print *,"# Enter t0, tf, dt:"
    read  *,t0,tf,dt 
    print *,"# l=",l," theta0=",theta0
    print *,"# t0=",t0," tf=",tf," dt=",dt
    ! Initialisation
    omega = sqrt(g/l)
    print *,"# omega=",omega," T=",2.0*PI/omega
    open(unit=11,file="pendulum.dat");
    ! Compute 
    t = t0 
    do while(t .le. tf)
        theta     =        theta0*cos(omega*(t-t0))
        dtheta_dt = -omega*theta0*sin(omega*(t-t0))
        x =  l*sin(theta)
        y = -l*cos(theta)
        vx = l*dtheta_dt*cos(theta)
        vy = l*dtheta_dt*sin(theta)
        write(11,100)t,x,y,vx,vy,theta,dtheta_dt
        t = t+dt
    enddo 
    close(11)
    100 FORMAT( 7 G15 . 7 )
end program 