# The following functions allow you to determine the size of a variable or expression. These
# functions are defined for all objects.

# They return ?1 when the operation doesn’t make sense. 

#{
ndims(a)
  # Return the number of dimensions of a.
For any array, the result will always be greater than or equal to 2.
Trailing singleton dimensions are not counted, i.e., tailing dimensions d greater than 2,
for which size (a, d) = 1.
#}
ndims(ones(4, 1, 2, 1))

#{
columns(a)
  Return the number of columns of a. This is equivalent to size (a, 2).
#}

#{
rows(a)
  Return the number of rows of a. This is equivalent to size (a, 1).
#}

#{
numel(a)
numel(a, idx1, idx2, ...)
  Return the number of elements in the object a.
Optionally, if indices idx1, idx2, . . . are supplied, return the number of elements that
would result from the indexing

a(idx1, idx2)

Note that the indices do not have to be scalar numbers.
#}
a = 1
b = ones(2, 3)
numel(a, b)

#{
will return 6, as this is the number of ways to index with b. Or the index could be
the string ":" which represents the colon operator. For example,
#}
a = ones(5, 3)
numel(a, 2, ":")
# will return 3 as the second row has three column entries.

#{
lenght(a)
  Return the length of the object a.
  The length is 0 for empty objects, 1 for scalars, and the number of elements for
  vectors. For matrix or N-dimensional objects, the length is the number of elements
  along the largest dimension (equivalent to max (size (a))).
#}

#{
sz = size(a)
dim_sz = size(a, dim)
[rows, clumns, ..., dim_N_sz] = size(...)
  · Return a row vector with the size (number of elements) of each dimension for the object a.
  · When given a second argument, dim, return the size of the corresponding dimension.
  · With a single output argument, size returns a row vector.
  · When called with multiple output arguments, size returns the size of dimension N in the Nth argument.
  · The number of rows, dimension 1, is returned in the first argument, the number of columns,
    dimension 2, is returned in the second argument, etc. 
  · If there are more dimensions in a than there are output arguments, size returns the total number of elements in
    the remaining dimensions in the final output argument.
#}

# Example 1: single row vector output
size([1, 2; 3, 4; 5, 6])
# Example 2: number of elements in 2nd dimension (columns)
size([1, 2; 3, 4; 5, 6], 2)
# Example 3: number of output arguments == number of dimensions
[nr, nc] = size([1, 2; 3, 4; 5, 6])
# Example 4: number of output arguments < number of dimensions
[nr, remainder] = size(ones(2, 3, 4, 5))

#{
isempty(a)
  Return true if a is an empty matrix (any one of its dimensions is zero).
#}

#{
isnull(x)
  · Return true if x is a special null matrix, string, or single quoted string
  · Indexed assignment with such a null value on the right-hand side should delete array elements. 
  · This function is used in place of isempty when overloading the indexed assignment method (subsasgn) for user-defined classes.
  · isnull is used to distinguish between these two cases:
#}

#{
sizeof(val)
  · Return the size of val in bytes.
#}

#{
size_equal(a, b, ...)
  · Return true if the dimensions of all arguments agree.
  · Trailing singleton dimensions are ignored. 
  · When called with a single argument, or no argument, size_equal returns true.
#}

#{
squeeze(x)
  · Remove singleton dimensions from x and return the result.
  · Note that for compatibility with matlab, all objects have a minimum of two dimensions and row vectors are left unchanged.
#}