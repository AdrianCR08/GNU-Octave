#{
Octave’s built-in numeric objects include real, complex, and integer scalars and matrices.
All built-in floating point numeric data is currently stored as double precision numbers.
On systems that use the IEEE floating point format, values in the range of approximately
2:2251 × 10?308 to 1:7977 × 10308 can be stored, and the relative precision is approximately
2:2204 × 10?16. The exact values are given by the variables realmin, realmax, and eps,
respectively.
#}

#{
Matrix objects can be of any size, and can be dynamically reshaped and resized. It is
easy to extract individual rows, columns, or submatrices using a variety of powerful indexing
features. 
#}