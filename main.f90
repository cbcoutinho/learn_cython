program main
  use iso_fortran_env, only: wp => real64
  use gfunc_module, only: gfunc
  implicit none

  real(wp), parameter :: x = 1._wp
  integer, parameter  :: n=6, m=6
  real(wp), parameter :: a1 = -1._wp, a2 = 1._wp
  real(wp), dimension(n) :: a
  real(wp), dimension(m) :: b
  real(wp), dimension(n, m) :: c

  integer :: ii

  a = [( ii*(a2-a1)/real(n-1,wp) + a1, ii = 0,n-1 )]
  b = [( ii*(a2-a1)/real(m-1,wp) + a1, ii = 0,m-1 )]

  call gfunc(x, n, m, a, b, c)

  do ii = 1, n
    print '(1x(6(1x, f11.8)))', c(ii,:)
  enddo

end program main
