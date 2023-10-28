program Brownian
  
  !Write a program that simulates BrownianMotion with a 2-D walk.

 implicit none
 
 real :: rNum
 integer :: i,n, s, x, y

!Ask user for input seed
   print*, "Type a random number seed?"
   read(*,*) s
   print*, "How many steps you wanna take?"
   read(*,*) n
 ! you wanna type 20000 for the n

   call srand (s)

 !set x and y to zero
  x=0.0
  y=0.0

  open (22, file= 'Brownian.txt')  
  
 !moving in 4 direction, up, down, left, right
   do i=1,n    
     rNum= rand ()
     if (rNum .lt. 0.25) then
      x= x+ 1.0
     else if (rNum .lt. 0.5) then
      y= y + 1.0
     else if (rNum .lt. 0.75 ) then
      x= x - 1.0
     else 
       y= y - 1.0
     endif
    write (22,*) x, y
   enddo


  !write to an output file so I can plot
   


 close (22)

 end program Brownian
 
