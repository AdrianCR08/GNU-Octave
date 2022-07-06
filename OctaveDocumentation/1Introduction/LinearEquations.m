# Systems of linear equations are ubiquitous in numerical analysis. To solve the set of linear
# equations Ax = b, use the left division operator, ‘\’:
# x = A \ b

# This is conceptually equivalent to A?1b, but avoids computing the inverse of a matrix directly

A = [2 0; 0 2];
b = [2; 1];
x = A \ b