! Antonio Díaz Pozuelo - adpozuelo@gmail.com
! Introducción a la computación paralela
program pi_serial
   implicit none

   integer :: i
   integer :: circle_points = 0
   integer :: square_points = 1073741824
   real :: rand_x, rand_y, origin_dist, pi

   do i = 1, square_points
      call random_number(rand_x)
      rand_x = rand_x*2 - 1
      call random_number(rand_y)
      rand_y = rand_y*2 - 1

      origin_dist = rand_x*rand_x + rand_y*rand_y

      if (origin_dist <= 1.0) &
         circle_points = circle_points + 1
   end do

   pi = 4*real(circle_points)/square_points
   print *, "Pi ~=", pi

end program pi_serial
