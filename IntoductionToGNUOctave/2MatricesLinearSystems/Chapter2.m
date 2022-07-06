# 1. Solve the system of equations using Gaussian elimination row operations
B = [-1 1 -2 1; 1 2 3 -1; 1 2 3 -2];
B(1, :) = -1 *  B(1, :);
B(2, :) = B(2, :) - B(3, :);
B(3, :) = -1 * B(3, :) + B(1, :);
B(3, :) = [0 0 0 1];
B(2, :) = [0 -3 -1 -1];
B(2, :) = -1/3 * B(2, :);

# 2. Use the multipliers from Exercise 1 to write an LU decomposition for
B = [-1 1 -2; 1 1 2; 1 2 1];
[L U P] = lu(B);
L * U;
b = [-3; 1; 4];
B * b;

# 3. Consider the system of linear equations Ax = b, where
A = [1 -3 5; 2 -4 3; 0 1 -1];
b = [1; -1; 3];

A \ b;

A = [1 -3 5 1; 2 -4 3 -1; 0 1 -1 3];
rref(A);

# 4. Use LU decomposition to solve the system from Exercise 3.
# Use Octave’s [L U P] = lu(A) command.
# To use PA = LU to solve Ax = b, first multiply through by P, then replace PA with LU:

[L U P] = lu(A);
P * A;

# 6.
M = floor(10 * rand(25, 26));
N = rref(M);
N(:, 26);

A = M(:, 1:25);
b = M(:, 26);
A \ b;

# 7. (a) Set up and solve the normal equations by hand to find the line of best fit, in y = mx+b
# form, for the given data. Check your answer using polyfit (x, y, 1).

Xdata = [2; 3; 5; 8];
Ydata = [3; 4; 4; 5];

plot(Xdata, Ydata, 'o-')
A = ones(4, 3);
A(:, 1) = Xdata;
A(:, 2) = Xdata;

B = A' * A;
A' * Ydata;

B(:, 4) = A' * Ydata;
rref(B);
x = linspace(2, 8);
y = 0.2857 * x + 2.7143;
plot(Xdata, Ydata, 'o-', x, y, 'linewidth', 2);
grid on
legend('original', 'least square');

# print Own.pdf


xData = [2 3 5 8];
yData = [3 4 4 5];

P = polyfit(xData, yData, 1);
y = polyval(P, xData);

plot(xData, yData, 'o-', xData, y, '+-');
grid on
legend('original', 'polyfit');

# print Poly.pdf

B;
A = B(:, 1:3);
b = B(:, 4);

A\b;

# 8. Use following commands to generate a randomized sample of 21 evenly spaced points from
# x = 0 to x = 200 with a high degree of linear correlation.
# We start with a line through the origin with random slope m, then add some \noise" to each y-value.

m = 2 * rand - 1;
x = [0 : 10: 200]';
y = m * x + 10 * rand(size(x));

P = polyfit(x, y, 1);
y1 = polyval(P, x);

plot(x, y, 'o-', x, y1, '+-');
grid on
legend('original', 'polyfit');

# 9. On July 4, 2006, during a launch of the space shuttle Discovery, NASA recorded the following altitude data3.

X = [0; 10; 20; 30; 40; 50; 60; 70; 80; 90; 100; 110; 120];
Y = [7; 938; 4160; 9872; 17635; 26969; 37746; 50548; 66033; 83966; 103911; 125512; 147411];

plot(X, Y, 'o-');

A = ones(13, 3);
A(:, 1) = X.^2;
A(:, 2) = X;


B = A' * A;
B(:, 4) = A' * Y;
B = rref(B);

x = linspace(0, 120);
y = B(1, 4) * x.^2 + B(2, 4) * x -B(3, 4);
plot(X, Y, 'o', x, y, 'linewidth', 1);
grid on
legend('data values', 'least-squares parabola');
xlabel('Time (s)');
ylabel('Altitude (ft)');
title('y = 5.3x^2 + 5.17x -4.24');

# print Own1.pdf

P = polyfit(X, Y, 3);
y = polyval(P, X);
plot(X, Y, 'o-', X, y, '+-');
grid on
legend('original data', 'polyfit data');
xlabel('Time (s)');
ylabel('Altitude (ft)');

# print Poly2.pdf

# 10.
X = [1900; 1910; 1920; 1930; 1940; 1950; 1960; 1970; 1980; 1990; 2000; 2010];
Y = [1650; 1750; 1860; 2070; 2300; 2525; 3018; 3682; 4440; 5310; 6127; 6930];

A = ones(12, 3);
A(:, 1) = X;
A(:, 2) = Y;
A(:, 3) = log(Y(:, 1));

# save Table.csv A;

scatter(X, A(:, 3));
grid on;
title('Semi-Log');

P = polyfit(X, Y, 3);
y = polyval(P, X);
plot(X, Y, 'o-', X, y, '+-');
grid on;
legend('original data', 'polyfit data');
xlabel('year');
ylabel('ln(y)');
title('Semi-Log Plot');

# 11. Create a data matrix that corresponds to a picture of your own design, containing six or more edges. Plot it.
# a) Rotate the image through 45° and 180°

A = [6.5 9.0 14.0 10.5 12.0 6.5 2.0 3.5 0 5.0 6.5; 0 5.0 5.5 9.0 14.0 11.5 14.0 9.0 5.5 5.0 0]
x = A(1, :);
y = A(2, :);
plot(x, y)

theta1 = 45 * pi / 180;
R1 = [cos(theta1) -sin(theta1); sin(theta1) cos(theta1)];
RD1 = R1 * A
x1 = RD1(1, :);
y1 = RD1(2, :);

theta2 = 180 * pi / 180;
R2 = [cos(theta2) -sin(theta2); sin(theta2) cos(theta2)];
RD2 = R2 * A;
x2 = RD2(1, :);
y2 = RD2(2, :);

plot(x, y, 'ro-', x1, y1, 'go-', x2, y2, 'bo-')
axis([-20, 20 -20 20], 'equal')
grid on
legend('original', 'rotated 45 deg', 'rotated 180 deg')

# b) Expand your figure by a factor of 2, then reflect the expanded figure in the x-axis.

T = [2 0; 0 2];
TA = T * A
x3 = TA(1, :);
y3 = TA(2, :);

R = [0 1; 1 0];
TDR = R * TA;
x4 = TDR(1, :);
y4 = TDR(2, :);
# plot(x, y, 'ro-', x3, y3, 'go-', x4, y4, 'bo-')
# axis('equal');
# grid on;
# legend('original', 'expanded', 'reflected')

# 12.
