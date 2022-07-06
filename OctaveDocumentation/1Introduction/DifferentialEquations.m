# Octave has built-in functions for solving nonlinear differential equations of the form

# dx /
# dt = f(x, t), x(t = t0) = x0

# For Octave to integrate equations of this form, you must first provide a definition of the
# function f(x; t). 

# Given the initial condition

x0 = [1; 2];

# and the set of output times as a column vector (note that the first output time corresponds
# to the initial condition given above)

t = linspace(0, 50, 200)';

# it is easy to integrate the set of differential equations:

# The function lsode uses the Livermore Solver for Ordinary Differential Equations

x = lsode("f", x0, t)

function xdot = f(x, t)
  r = 0.25;
  k = 1.4;
  a = 1.5;
  b = 0.16;
  c = 0.9;
  d = 0.8;
  
  xdot(1) = r*x(1)*(1 - x(1)/k) - a*x(1)*x(2)/(1 + b*x(1));
  xdot(2) = c*a*x(1)*x(2)/(1 + b*x(1)) - d*x(2);
endfunction  