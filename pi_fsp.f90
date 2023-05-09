! Antonio Díaz Pozuelo - adpozuelo@gmail.com
! Introducción a la computación paralela
program pi_fsp
   implicit none

   integer :: i
   integer, parameter :: square_points = 1073741824
   real :: pi
   integer, allocatable:: circle_points(:)
   real, allocatable :: rand_x(:), rand_y(:)

   allocate(circle_points(square_points))
   allocate(rand_x(square_points), rand_y(square_points))
   
   call random_number(rand_x)
   call random_number(rand_y)
   rand_x = (rand_x*2 - 1)*(rand_x*2 - 1)
   rand_y = (rand_y*2 - 1)*(rand_y*2 - 1)

   do concurrent(i = 1:square_points)
      if ((rand_x(i) + rand_y(i)) <= 1.0) &
         circle_points(i) = 1
   end do

   pi = 4*real(sum(circle_points))/square_points
   print *, "Pi ~=", pi

end program pi_fsp
