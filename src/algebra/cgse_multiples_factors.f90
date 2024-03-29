
! --- CGSE, Algebra exercises, 1.2 - Multiples and Factors
program cgse_multiples_factors
    use algebra
    implicit none 
    integer :: i, n
    integer, dimension(100) :: m
    ! --- Exercise 1, page 6 : Multiples
    print *,"Exercise 1.1.a) ", [(i*9, i=1,5)]
    print *,"Exercise 1.1.b) ", [(i*13, i=1,5)]
    print *,"Exercise 1.1.c) ", [(i*16, i=1,5)]
    call multiples_of_p( 8, 10, 20, m, n )
    print *,"Exercise 1.2.a) ", m(1:n)
    call multiples_of_p( 12, 20, 100, m, n )
    print *,"Exercise 1.2.b) ", m(1:n)
    call multiples_of_p( 14, 25, 90, m, n )
    print *,"Exercise 1.2.c) ", m(1:n)
    call multiples_of_p( 10, 5, 105, m, n )
    print *,"Exercise 1.3.a) ", m(1:n)
    call multiples_of_p( 15, 5, 105, m, n )
    print *,"Exercise 1.3.b) ", m(1:n)
    call multiples_of_p(lcm(10, 15), 5, 105, m, n)
    print *,"Exercise 1.3.c) ", m(1:n)
    call multiples_of_p( 3, 19, 35, m, n ) 
    print *,"Exercise 1.4.a) ", m(1:n)
    call multiples_of_p( 4, 19, 35, m, n )
    print *,"Exercise 1.4.b) ", m(1:n)
    call multiples_of_p(lcm(3,4), 19, 35, m, n)
    print *,"Exercise 1.4.c) ", m(1:n)
    call multiples_of_p(lcm(5,6), 1, 40, m, n)
    print *,"Exercise 1.5  ) ", m(1:n)
    print *,"Exercise 1.6  ) lcm ", lcm(6, lcm(8, 10)), " so none..."
    print *,"Exercise 1.7  ) lcm ", lcm(9, lcm(12, 15)), " so none..."
    call multiples_of_p(lcm(3, lcm(6, 9)), 1, 100, m, n)
    print *,"Exercise 1.8  ) ", m(1:n)

    ! --- Exercise 2, page 6 : Factors
    call factors( 10, m, n )
    print *,"Exercise 2.1.a) ", m(1:n)
    call factors( 4, m, n )
    print *,"Exercise 2.1.b) ", m(1:n)
    call factors( 13, m, n )
    print *,"Exercise 2.1.c) ", m(1:n)
    call factors( 20, m, n )
    print *,"Exercise 2.1.d) ", m(1:n)
    call factors( 25, m, n )
    print *,"Exercise 2.1.e) ", m(1:n)
    call factors( 24, m, n )
    print *,"Exercise 2.1.f) ", m(1:n)
    call factors( 35, m, n )
    print *,"Exercise 2.1.g) ", m(1:n)
    call factors( 32, m, n )
    print *,"Exercise 2.1.h) ", m(1:n)
    call factors( 40, m, n )
    print *,"Exercise 2.1.i) ", m(1:n)
    call factors( 50, m, n )
    print *,"Exercise 2.1.j) ", m(1:n)
    call factors( 9, m, n )
    print *,"Exercise 2.1.k) ", m(1:n)
    call factors( 15, m, n )
    print *,"Exercise 2.1.l) ", m(1:n)
    call factors( 36, m, n )
    print *,"Exercise 2.1.m) ", m(1:n)
    call factors( 49, m, n )
    print *,"Exercise 2.1.n) ", m(1:n)
    call factors( 48, m, n )
    print *,"Exercise 2.1.o) ", m(1:n)
    print *,"Exercise 2.2.a) ", 1
    print *,"Exercise 2.2.b) ", 1, 2
    print *,"Exercise 2.2.c) ", 1, 5
    print *,"Exercise 2.2.d) ", 1, 10
    print *,"Exercise 2.3  ) ", 3
    print *,"Exercise 2.4  ) ", 1

    contains

    subroutine multiples_of_p( p, lb, ub, m, n )
        ! --- variables
        integer, intent(in) :: p  ! --- multiple
        integer, intent(in) :: lb ! --- lower bound
        integer, intent(in) :: ub ! --- upper bound
        integer, dimension(:), intent(out) :: m
        integer, intent(out) :: n
        integer :: pfirst, plast
        real :: x, y
        ! --- initialisation
        x = real(lb)
        y = real(ub)
        pfirst = p * (floor(x/p) + 1)
        plast  = p * (ceiling(y/p) - 1)
        n = (plast - pfirst) / p + 1
        ! --- routine
        if( n > 0 ) then
            m = [(i,i=pfirst,plast,p)]
        end if 
    end subroutine multiples_of_p

    

end program cgse_multiples_factors