# Octave includes support for single precision data types, and most of the functions in Octave
# accept single precision values and return single precision answers. A single precision variable
# is created with the single function.

#{
single(x)
  · Convert x to single precision type.
#}

sngl = single(rand(2, 2))

class(sngl)

# Many functions can also return single precision values directly. For example

ones(2, 2, "single")
zeros(2, 2, "single")
eye(2, 2, "single")
rand(2, 2, "single")
NaN(2, 2, "single")
NA(2, 2, "single")
Inf(2, 2, "single")
