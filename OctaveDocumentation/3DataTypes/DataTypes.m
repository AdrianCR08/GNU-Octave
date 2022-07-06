A = [1 2 3; 4 5 6; 7 8 9;]
typeinfo(A)

#{
typeinfo ()
typeinfo (expr)
  Return the type of the expression expr, as a string
#}

#{
classname = class (obj)
class (s, id)
class (s, id, p, . . . )
Return the class of the object obj, or create a class with fields from structure s and
name (string) id.
Additional arguments name a list of parent classes from which the new class is derived.
#}

class(A)