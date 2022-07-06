# 2.1.2 LU Decomposition

# LU decomposition is a matrix factorization that encodes the results of the Gaussian elimination algorithm.
# The goal is to write A = LU
#  where L is a unit lower triangular matrix and U is an upper triangular matrix.
# We will see that this factored form can be used to easily solve Ax = b.

A = [1 2 3; 0 -2 -4; 1 -1 0]
L = [1 0 0; 0 1 0; 1 1.5 1]
U = [1 2 3; 0 -2 -4; 0 0 3]

L * U

A = [-7 -2 9 4; -4 -9 3 0; -3 4 6 -2; 6 7 -4 -8]
[L U P] = lu(A)

