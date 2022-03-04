# Basic Arithmetic 
6 / 2 + 3 * (7-4)^2

# Vectors and matrices are basic variable types, so it is easier to learn Octave syntax if you already
# know a little linear algebra.

u = [1 -4 6]  # Vector row
u             # Variable name

# The code u = . . . assigns the result of the operation that follows to the variable u, which can
# then be recalled and used in further calculations.

# To create a column vector instead, use semicolons:

u = [1; -4; 6];
u

# Notice that the function of the semicolon is to begin a new row.

A = [1 2 -3; 2 4 0; 1 1 1]

#{
In Octave, all of the above variables are really just matrices of different dimensions. A scalar is
essentially a 1 × 1 matrix. Similarly, a row vector is a 1 × n matrix and a column vector is an m × 1 matrix.
#}

# Vector operations 

u = [1; -4; 6]

v = [2; 1; -1]

# Linear combination
disp('Linear Combination:');
2 * v + 3 * u

# Dot product
disp('Dot product')
dot(u, v)

# Corss product
disp('Cross product')
cross(u, v)

# Lenght of vector u
disp('Lenght of vector')
norm(u)

u = [3 5]
v = [7 2]

# Ortogonal Proyection
disp('Ortogonal Ptoyection')
dot(u, v) / (norm(v))^2 * v

# Matrix Operations

A = [1 2 -3; 2 4 0; 1 1 1]
B = [1 2 3 4; 0 -2 -4 6; 1 -1 0 0]

A * B

# Transponse of the matrix

disp('Transpose Matrix')
B' * A # B' is the transpose of B

#{
To perform basic matrix arithmetic, we also need identity matrices, which are easy to generate
with the eye(n) command, where n is the dimension of the matrix. 
#}

# Indentity matrices 
disp('Indentity Matrices')
2 * A - 4 * eye(3) # eye(3 is a 3 x 3 indentity matrix)

# Octave can also find determinants, inverses, and eigenvalues.
# Determinant
disp('Determinant')
det(A)

# Matrix inverse
disp('Matrix Inverse')
inv(A)

# Eigenvalues
disp('Eigenvalues')
eig(A)

# Rank
disp('Rank') # Matrix Rank
rank(A)