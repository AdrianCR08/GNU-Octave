# A range is a convenient way to write a row vector with evenly spaced elements. 
# A range expression is defined by the value of the first element in the range, an optional value for the
# increment between elements, and a maximum value which the elements of the range will not exceed.

1:5

# defines the set of values [ 1, 2, 3, 4, 5 ], and the range

1:3:5

# Converting a range into an array

x = 0: 0.1: 1;

# defines x to be a variable of type range and occupies 24 bytes of memory, the expression

y = [0: 0.1: 1];

# defines y to be of type matrix and occupies 88 bytes of memory.
# This space saving optimization may be disabled using the function disable range.

#{
val = disable_range ()
old_val = disable_range (new_val)
disable_range (new_val, "local")
  · Query or set whether storing ranges in a special space-efficient format is disabled.
  · The default value is false. If this option is set to true, Octave will store ranges as full
    matrices.
  · When called from inside a function with the "local" option, the setting is changed
    locally for the function and any subroutines it calls. The original setting is restored
    when exiting the function.
      
#}
