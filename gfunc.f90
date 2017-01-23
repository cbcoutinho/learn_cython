module gfunc_module
  implicit none
contains
  subroutine gfunc(x, n, m, a, b, c)
    double precision, intent(in) :: x
    integer, intent(in) :: n, m
    double precision, dimension(n), intent(in) :: a
    double precision, dimension(m), intent(in) :: b
    double precision, dimension(n, m), intent(out) :: c
    integer :: i, j
    do j=1,m
      do i=1,n
        c(i,j) = exp(-x * (a(i)**2 + b(j)**2))
      end do
    end do
  end subroutine
end module
