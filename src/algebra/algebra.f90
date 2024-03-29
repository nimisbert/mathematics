! --- Author : Nicolas Misbert
! --- Date   : 26 Mars 2024
module algebra
    implicit none 
    private

    public :: gcd       ! --- Greatest Common Divisor
    public :: lcm       ! --- Least Common Multiple
    public :: factors   ! --- Factors of a number
    
    contains
    
    function gcd( a, b )
        implicit none 
        ! --- variables
        integer, intent(in) :: a, b
        integer :: ta, tb, gcd
        ! --- initialisation
        ta = a
        tb = b
        ! --- processing
        do while( tb /= 0 )
            gcd = tb
            tb = mod(ta, tb)
            ta = gcd
        end do 
        ! --- end 
    end function gcd 
    
    function lcm( a, b )
        implicit none 
        ! --- variables 
        integer, intent(in) :: a, b
        integer lcm 
        ! --- processing
        lcm = abs(a*b) / gcd(a, b)
    end function lcm

    subroutine factors( a, m, n )
        implicit none 
        ! --- variables 
        integer, intent(in) :: a
        integer, dimension(:), intent(out) :: m
        integer, intent(out) :: n
        integer :: i,j 
        ! --- initialisation
        n = 0
        i = 1
        j = 1
        ! --- processing
        do while( i <= a )
            factor : if ( mod(a,i) == 0 ) then
                m(j) = i
                n = j
                j = j + 1
            end if factor
            i = i + 1
        end do 
    end subroutine factors

end module algebra