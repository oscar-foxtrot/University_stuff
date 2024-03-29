# Numerical methods  
This is a solution for a simple task from the field of numerical methods. 

The task is to find the solution for the following Cauchy problem:  

![](<https://github.com/oscar-foxtrot/University-stuff/blob/main/C practice/Runge_Kutta/Images/The_Task.png>)  
  
Where  
![](<https://github.com/oscar-foxtrot/University-stuff/blob/main/C practice/Runge_Kutta/Images/func.png>)  
  
Using the Runge-Kutta numerical method of the second order.  
Study the convergence of the method on regular grids within [0, 1] segment,   
starting at N = 20 (where N is the number of segments), with increasing N.  
Try different parameters of the method to find out which one is better (or do they all give the same precision?)

# Note: 
The program ("program.c" in the current directory), the program displaying the solution,    
can be used with other than sin(t^2 + t) functions,  
only a simple redefinition of the "f" function is needed.
