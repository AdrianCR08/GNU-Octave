# It is easy to define a matrix of values in Octave. The size of the matrix is determined
# automatically, so it is not necessary to explicitly state the dimensions. 

a = [1, 2; 3, 4]

# Elements of a matrix may be arbitrary expressions, provided that the dimensions all
# make sense when combining the various pieces. 
[a, a]

# But the expresion
# [a, 1]

# ctave looks at the surrounding context to determine whether spaces and newline characters 
# should be converted into element and row separators

a = [1 2 
     3 4]
# However, some possible sources of confusion remain. For example, in the expression
[1 - 1]

# the ‘-’ is treated as a binary operator and the result is the scalar 0

# But in the expression

[1 -1]

# the ‘-’ is treated as a unary operator and the result is the vector [ 1, -1 ]
# Similarly, the expression

[sin(pi)]

# will be parsed as

# [sin, (pi)]
# and will result in an error since the sin function will be called with no arguments.

# To get around this, you must omit the space between sin and the opening parenthesis, or enclose
# the expression in a set of parentheses:

[(sin(pi))]

# Whitespace surrounding the single quote character (‘'’, used as a transpose operator and for delimiting character strings) 

#[1a']

#{
sizemax()
  · Return the largest value allowed for the size of an array.
  · If Octave is compiled with 64-bit indexing, the result is of class int64, otherwise it is
    of class int32. 
  · The maximum array size is slightly smaller than the maximum value
    allowable for the relevant class as reported by intmax.
#}

#{
When you type a matrix or the name of a variable whose value is a matrix, Octave
responds by printing the matrix in with neatly aligned rows and columns. If the rows of
the matrix are too large to fit on the screen, Octave splits the matrix and displays a header
before each section to indicate which columns are being displayed. You can use the following
variables to control the format of the output.
#}

#{
val = output_precision()
old_val = output_precision(new_val)
output_precision(new_val, "local")
  · Query or set the internal variable that specifies the minimum number of significant figures to display for numeric output.
  · Note that regardless of the value set for output_precision, the number of digits
    of precision displayed is limited to 16 for double precision values and 7 for single precision values.
#}

#{
val = split_long_rows ()
old_val = split_long_rows (new_val)
split_long_rows (new_val, "local")
  · Query or set the internal variable that controls whether rows of a matrix may be split
    when displayed to a terminal window
  · If the rows are split, Octave will display the matrix in a series of smaller pieces, each
    of which can fit within the limits of your terminal width and each set of rows is labeled
    so that you can easily see which columns are currently being displayed. 
#}

rand(2, 10)

#{
val = fixed_point_format ()
old_val = fixed_point_format (new_val)
fixed_point_format (new_val, "local")
  · Query or set the internal variable that controls whether Octave will use a scaled
    format to print matrix values.
  · The scaled format prints a scaling factor on the first line of output chosen such that
    the largest matrix element can be written with a single leading digit.
#}
fixed_point_format(true)
logspace(1, 7, 5)'