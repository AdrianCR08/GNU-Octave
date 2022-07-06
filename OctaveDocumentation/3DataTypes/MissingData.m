#{
It is possible to represent missing data explicitly in Octave using NA (short for “Not Available”). 
Missing data can only be represented when data is represented as floating point
numbers. In this case missing data is represented as a special case of the representation of
NaN
#}

#{
NA
NA(n)
NA (n, m)
NA (n, m, k, . . .)
NA (. . ., class)
  Return a scalar, matrix, or N-dimensional array whose elements are all equal to the
  special constant used to designate missing values.
  Note that NA always compares not equal to NA (NA != NA). To find NA values, use
  the isna function
#}

#{
isna(x)
  Return a logical array which is true where the elements of x are NA (missing) values
  and false where they are not.
#}
isna([13, Inf, NA, NaN])


