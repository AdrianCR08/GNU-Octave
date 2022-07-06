#{
2.1 Linear Systems
2.1.1 Gaussian Elimination
#}

B = [1 2 3 4; 0 -2 -4 6; 1 -1 0 0]
B(2, 3)

# We use () to pick an especific element in a matrix
# The colon (;) operator is used to specify a limted range 
# or if no starting or ending value is specified

B(1, :) # From matrix B: row 1, all columns

#{
Now, let’s use this notation to carry out basic row operations on B to reach row echelon form
#}

# The first operation is to replace row 3 with -1 times row 1, added to row 3

B(3, :) = -1*B(1, :) + B(3, :)

# Now let's replace row 3 with -1.5 times row, added to row 3

B(3, :) = -1.5*B(2, :) + B(3, :)

# The matrix is now in row echelon form.

# Octave also has a built-in command, rref to find the row-reduced echelon form of the matrix directly.

rref(B)

# Five decimal places are displayed by default.
# it is possible to display more decimal places, if desired (type: format long)

