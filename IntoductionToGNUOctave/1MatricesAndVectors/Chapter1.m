# 1 For practice saving and loading variables , try the following:

# 2 Let u = <2, -4, 0> and v = <3, 1, 5, -7>. Find each of the following

# (a) w = 2u + 5v
u = [2, -4, 0];
v = [3, 1.5, -7];
w = 2 * u + 5 * v

# (b) d = u · v
d = dot(u, v)

# (c) l = ||u||
l = norm(u)

# (d) u1 = a unit vector that points in the direction of u
u_1 = u / l

# (e) n = a vector orthogonal to both u and v
v_0 = dot(u, v) / (norm(v))^2 * v

# (f) p = projv(u)
p_vu = (dot(u, v) / l) * v

# Enter the following Matrices
A = [1 -3 5; 2 -4 3;0 1 -1]
B = [1 -1 0 0; -3 0 7 -6; 2 1 -2 -1]
I = eye(3)

# Use Octave to compute each of the following
# (a) d = det(A)
d = det(A)

# (b) r = rank(B)
r = rank(B)

# (c) C = 2A + 4I
C = 2 * A + 4 * I

# (d) D = A^-1
D = A.^-1

# (e) E = AB
E = A * B

# (f) F = B^TA^T
F = B' * A'

# 4 Plot the following set of points, using triangle makers:
# {(-1, 5), (1, 4), (2, 2.5), (3, 0)}
# Turn the grid on
# Give the plot the title "Scatter plot"
# Save it as a PNG or JPG image file.

x = [-1 1 2 3];
y = [5 4 2.5 0];

plot(x, y, '^', 'linewidth', 1.5)
grid on
print ScatterPlot.pdf

# 5 Modify the plot of y = x2 sin(x)
#{
(a) Make the graph of y = x2 sin(x) a thick red line.
(b) Graph y = x2 and y = ?x2 on the same axes, as thin black dotted lines.
(c) Use a legend to identify each curve.
(d) Add a title.
(e) Add a grid.
Save the plot as a png or jpg image file.
#}
clear; clf;
x = linspace(0, 2 * pi, 50);
y = x.^2.* sin(x);
y1 = x.^2;
y2 = -x.^2;
plot(x, y, 'r', 'linewidth', 3, x, y1, 'g', 'linewidth', 3, x, y2, 'b', 'linewidth', 3)
axis([0 2*pi]);
grid on;
legend('x.^2*sin(x)', 'x.^2', '-x^2')
title('Multiple graphs')

print MultipleGraphs.pdf

# 6 Let f(x) = 2-e^{-x-1}
#{
(a) Plot a graph of the function as a thick blue line on [?3; 3]×[?5; 5]. Note that exp(x)
can be used for the exponential function.

(b) Add the function’s horizontal asymptote to your figure as a dashed black line. The
ones command provides a useful trick for the required constant term:

>> % pl o t constant fun c ti on y = k
>> plot(x , k* ones ( size (x)))

(c) Add a graph of the \parent function," y = ex, on the same axes as a thin red line.

(d) Add a legend to your figure identifying the three curves as \transformed exponential
function," \horizontal asymptote," and \parent function."

(e) You have probably noticed that our graphs do not show the traditional x- and ycoordinate axes|and usually this is not a problem. But, for this graph we will add
them. Here is one method that can be used:

>> % plot x? and y?coordinate axes as thin blacklines
>> % [a b] = horizontal axis limits
>> % [c d] = vertical axis limits
>> plot ([a b] , [0 0] , 'k', [0 0], [c d], 'k')

With the coordinate axes plotted manually, we may now wish to turn off the default
box-format axes:

>> axis off

(f) Showing the coordinate axes makes the intercepts more clearly apparent. Highlight
them by adding circle markers at the x- and y-intercepts. Use the text function to
label these points with their coordinates. This is the syntax to use:

>> % add a text label to plot at coordinates( x , y )
>> t ex t (x , y , ' l a b e l ' )


#}

clear; clf;
x = linspace(-3, 5, 50);
y = 2 - exp(x - 1);
plot(x, y, 'b', 'linewidth', 2)
axis([-3 3 -5 5]);
# k = y;
# plot(x, k.* ones(size(x)))
hold on
x1 = [0 -10];
y1 = [2 2];
plot(x1, y1, 'k --')
hold on
y2 = exp(x);
plot(x, y2, 'r')
hold on
# [a b] = horizontal axis limits
# [c d] = vertical axis limits
a = [0 0];
b = [5 -5];
c = [-3 3];
d = [0 0];
plot(a, b, 'k')
hold on
plot(c, d, 'k')
axis off
legend("transformed exponential function", "horizontal asymptote", "parent function")
text(0, 5.1, 'y')
text(0, -5.1, '-y')
text(3, 0.3, 'x')
text(-3, 0.3, '-x')

print Exponential.pdf