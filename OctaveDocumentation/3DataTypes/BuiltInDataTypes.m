# The standard built-in data types are real and complex scalars and matrices, ranges,
# character strings, a data structure type, and cell arrays.

# The data type of a variable can be determined and changed through the use of the
# following functions.

#{
classname = class (obj)
class (s, id) 
class (s, id, p, . . . )
  Return the class of the object obj, or create a class with fields from structure s 
  and name (string) id.
#}

#{
isa (obj, classname)
  Return true if obj is an object from the class classname.
  classname may also be one of the following class categories:
  -> "float"    Floating point value comprising classes "double" and "single"
  -> "integer"  Integer value comprising classes (u)int8, (u)int16, (u)int32, (u)int64.
  -> "numeric"  Numeric value comprising either a floating point or integer value.
 If classname is a cell array of string, a logical array of the same size is returned,
 containing true for each class to which obj belongs to
#}

#{
cast(value, "type")
  Convert val to data type type.
  Both val and type are typically one of the following built-in classes:
  
  "double"
  "single"
  "logical"
  "char"
  "int8"
  "int16"
  "int32"
  "int64"
  "uint8"
  "uint16"
  "uint32"
  "uint64"
#}

#{
y = typecast(x, "class")
  Return a new array y resulting from interpreting the data of x in memory as data of
  the numeric class class.
  
   Both the class of x and class must be one of the built-in numeric classes:
   
   "logical"
    "char"
    "int8"
    "int16"
    "int32"
    "int64"
    "uint8"
    "uint16"
    "uint32"
    "uint64"
    "double"
    "single"
    "double complex"
    "single complex"
    
 If the input is a row vector, the return value is a row vector, otherwise it is a column vector.
 If the bit length of x is not divisible by that of class, an error occurs
#}

x = uint16([1, 65535]);
typecast(x, "uint8")

#{
swapbytes(x)
  Swap the byte order on values, converting from little endian to big endian and vice versa.
#}

swapbytes(uint16(1:4))

#{
y = bitpack(x, class)
  Return a new array y resulting from interpreting the logical array x as raw bit patterns
  for data of the numeric class class.
    class must be one of the built-in numeric classes:
    "double"
    "single"
    "double complex"
    "single complex"
    "char"
    "int8"
    "int16"
    "int32"
    "int64"
    "uint8"
    "uint16"
    "uint32"
    "uint64"
    
The number of elements of x should be divisible by the bit length of class. If it is
not, excess bits are discarded. 
Bits come in increasing order of significance, i.e., x(1) is bit 0, x(2) is bit 1, etc.
The result is a row vector if x is a row vector, otherwise it is a column vector.
#}

#{
y = bitunpack(x)
  Return a logical array y corresponding to the raw bit patterns of x.
  x must belong to one of the built-in numeric classes:
  "double"
  "single"
  "char"
  "int8"
  "int16"
  "int32"
  "int64"
  "uint8"
  "uint16"
  "uint32"
  "uint64"
  
 The result is a row vector if x is a row vector; otherwise, it is a column vector.
 #}