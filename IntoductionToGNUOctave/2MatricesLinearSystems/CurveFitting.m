#{
In statistics, the problem of fitting a straight line to a set of data is often considered. We tackle
the more general problem of fitting a polynomial to a set of points.
#}

D = [1 1; 2 2; 3 5 ; 4 4; 5 2; 6 -3]
Xdata = D(:, 1)
Ydata = D(:, 2)
plot(Xdata, Ydata, 'o-') # Plot line segments with circle markers

#{
One approach is to use the ones command to create a matrix of ones of the appropriate size, and
then overwrite the first and second columns with the correct data.
#}

A = ones(6, 3)
A(:, 1) = Xdata.^2
A(:, 2) = Xdata
A

#{
Our system is inconsistent. It can be shown that the least-squares solution comes from solving
the normal equations, AT Ap = AT y, where p is the vector [a b c] of polynomial coefficients.
#}

A' * A
A' * Ydata

# The corresponding augmented matrix is:

B = [2275 441 91 60; 441 91 21 28; 91 21 6 11]
B(:, 4) = A' * Ydata
rref(B)

# Thus the correct quadratic equation is y = ?0:89286x2 + 5:65x ? 4:4.
# Now we plot a graph of this parabola together with our original data points.

x = linspace(0 , 7, 50)
y = -0.8929*x.^2 + 5.6500*x - 4.4000
plot(Xdata, Ydata, 'o', x, y, 'linewidth', 2)
grid on
legend('data values', 'least-squares parabola')
title('y = 0.8929x^2 + 5.65x - 4.4')

# Example 2.2.2. Use polyfit to find the least-squares parabola for the following data:

P = polyfit(Xdata, Ydata, 2) # Degree two polynomial fit

y = polyval(P, Xdata) # Evaluate polynomial P at input Xdata
plot(Xdata, Ydata, 'o-', Xdata, y, '+-')
grid on
legend('original data', 'polyfit data')

