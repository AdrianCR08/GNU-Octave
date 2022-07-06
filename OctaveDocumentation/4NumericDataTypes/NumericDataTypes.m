# A numeric constant may be a scalar, a vector, or a matrix, and it may contain complex values

# If the numeric constant is a real integer, it can be defined in decimal, hexadecimal, or binary notation. 
42          # Decimal Notation
0x2A        # Hexadecimal Notation
0b101010    # Hexadecimal Notation
0b10_1010   # Underscore Notation
round(42.1) # also binary64)

# In decimal notation, the numeric constant may be denoted as decimal fraction or even
# in scientific (exponential) notation. 
# Note that this is not possible for hexadecimal or binary notation. 

.105
1.05e-1
.00105e+2

# · Unlike most programming languages, complex numeric constants are denoted as the 
# sum of real and imaginary parts.
# · The imaginary part is denoted by a real-valued numeric constant followed immediately 
# by a complex value indicator (‘i’, ‘j’, ‘I’, or ‘J’ which represents p?1). 
# · No spaces are allowed between the numeric constant and the complex value indicator.

3 + 42i
3 + 42j
3 + 42I
3 + 42J
3.0 + 42.0i
3.0 + 0x2Ai
3.0 + 0b10_1010i
0.3e1 + 420e-1i

#{
double (x)
  · Convert x to double precision type.
#}

#{
complex(x)
complex(re, im)
  · Return a complex value from real arguments.
  · With 1 real argument x, return the complex result x + 0i.
  · With 2 real arguments, return the complex result re + imi. complex can often be more convenient than expressions such as a + b*i.
#}
complex([1, 2], [3, 4])

