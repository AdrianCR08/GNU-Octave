# 2.1.2 Left Division

# The built-in operation for solving linear systems of the form Ax = b
# in Octave is called left division and is entered as A\b.
#  This is \conceptually equivalent" to the product A^-1b

# # To use left division, we need to extract the coefficient matrix and vector of rightside constants.
# Let’s call the coefficient matrix A and the right-side constants b.

B = [1 2 3 4; 0 -2 -4 6; 1 -1 0 0]

A = B(:, 1:3) # Extract coefficient matrix
b = B(:, 4) # Extract rightside constants

A \ b # Solve System Ax = b
