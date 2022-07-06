# Creating a Matrix

# Vectors and matrices are the basic building blocks for numerical analysis.
# To create a new matrix and store it into a variable so that you can refer to it later, type:

A = [1, 2, 3; 3, 5, 8; 13, 21, 34]

# Octave will respond by printing the matrix in neatly aligned columns. Octave uses a comma
# or space to separate entries in a row, and a semicolon or carriage return to separate one row
# from the next.

B = [1 2 3; 3 5 6; 13 21 34]

# Ending a command with a semicolon tells Octave not to print the result of the command.

C = rand(3, 2);

# will create a 3 row, 2 column matrix with each element set to a random value between zero and one

# To display the value of a variable, simply type the name of the variable at the prompt.
# >> B