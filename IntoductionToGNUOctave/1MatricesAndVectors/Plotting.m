# Basic Plotting

#{
Basic two-dimensional plotting of functions in Octave is accomplished by creating a vector for
the independent variable and a second vector for the range of the function
#}

# linspace( start val , end val, n)
x = linspace(0, 2 * pi, 50);
# This creates a row vector of 50 evenly spaced values beginning at 0 and going up to 2?. 
# Now, we want to create a vector of the corresponding y-values.

y = sin(x);

# Now, to plot the function, use the plot command:

plot(x, y)

# We can set the window with the axis command.
# The window iscontrolled by a vector of the form [Xmin Xmax Ymin Ymax].
# Let’s set the axes to match the domain and range of the function.

# axis([0 2*pi -1 1]);

# Change the linewidth
plot(x, y, 'r', 'linewidth', 3)
# Set axis lenght
axis([0 2*pi -1 1]);
# Turn axis on
grid on 
# Name label x
xlabel('x');
# Name label y
ylabel('y');
# Set graph's title
title('Single Grapgh');
# Add graph's legend
legend('y = sin(x)');

# Saving the graph as a pdf file
print sinfunction.pdf

clear; clf;
x = [1 2 3 4]
y = [1 2 5 4]
plot(x, y, 'o')

# Now suppose we want to graph the line y = 1:2x on the same set of axes (this is the line of best fit for this data).
# To add to our current graph we need to use the command hold on. 
# Then any new plots will be drawn onto the current axes
# We can switch back later with hold off.

hold on
plot(x, 1.2 * x)

# Now we should see four points and the graph of the line.
# Alternately, we can create multiple plots within a single plot command.

clear; clf;
x = [1 2 3 4];
y1 = [1 2 5 4 ];
y2 = 1.2 * x;
plot(x, y1, 'o', x, y2)
axis([0 5 0 6]);
grid on;
legend('data points', 'regression line');

# ElementWise Operations

clear; clf;
x = linspace(-10, 10, 100)
plot(x, x.^2.*sin(x)) # Correct elementwise exponent and product




