t = 0:0.1:10*pi
r = linspace(0, 1, numel(t));
z = linspace(0, 1, numel(t));
plot3(r.*sin(t), r.*cos(t), z);
xlabel("r.*sin(t)");
ylabel("r.*cos(t)");
zlabel("z");
title("plot3 display of 3D helix");


