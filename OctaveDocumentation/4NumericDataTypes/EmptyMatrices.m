# By default, dimensions of the empty matrix are printed along with the empty matrix
# symbol, ‘[]’. The built-in variable print_empty_dimensions controls this behavior

#{
val = print_empty_dimensions ()
old_val = print_empty_dimensions (new_val)
print_empty_dimensions (new_val, "local")
  · Query or set the internal variable that controls whether the dimensions of empty
    matrices are printed along with the empty matrix symbol, ‘[]’.
#}

zeros(3, 0)

# When called from inside a function with the "local" option, the variable is changed
# locally for the function and any subroutines it calls. The original variable value is
# restored when exiting the function.

# Empty matrices may also be used in assignment statements as a convenient way to delete
# rows or columns of matrices.
