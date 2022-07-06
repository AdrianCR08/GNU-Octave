# Matrices and matrix transformations play a key role in computer graphics.
# There are several ways to represent an image as a matrix.
# The approach we take here is to list a series of vertices that are connected sequentially to produce the edges of a simple graph.
# We write this as a 2 ×n matrix where each column represents a point in the figure.

D = [1 1 3 3 2 1 3; 2 0 0 2 3 2 2]
x = D(1, :);
y = D(2, :);
plot(x, y);

# Rotations can be obtained using multiplication by a special matrix.
# Execute a 90 degree rotation

theta1 = 90 * pi / 180 ;
R1 = [cos(theta1) -sin(theta1); sin(theta1) cos(theta1)];
RD1 = R1 * D;
x1 = RD1(1, :);
y1 = RD1(2, :);

# Execute a 225 degree rotation

theta2 = 225 * pi / 180;
R2 = [cos(theta2) -sin(theta2); sin(theta2) cos(theta2)];
RD2 = R2 * D;
x2 = RD2(1, :);
y2 = RD2(2, :);

# Plot original and rotated figures

plot(x, y, 'bo-', x1, y1, 'ro-', x2, y2, 'go-');
axis([-4 4 -4 4], 'equal')
grid on
legend('original', 'rotated 90 deg', 'rotated 225 deg')

# Reflection
# f l is a line through the origin, then a reflection of the point (x; y) in the line l is given by R · [x; y]

R = [0 1; 1 0];
RD = R * D;
x1 = RD(1, :);
y1 = RD(2, :);
plot(x, y, 'o-', x1, y1, 'o-');
axis([-1 4 -1 4], 'equal');
grid on
legend('original', 'reflected')

# Dilation
# Dilation (i.e., expansion or contraction) can also be accomplished by matrix multiplication. Let t = [k 0; 0 k]
# Expand the house graph by a factor of 2

T = [2 0; 0 2];
TD = T * D;
x1 = TD(1, :); y1 = TD(2, :);
plot(x, y, 'o-', x1, y1, 'o-');
axis([-1 7 -1 7], 'equal');
grid on
legend('original', 'expanded')




