VGS = [0 : -0.5 : -8]
ID = 10e-3 * (1 - (VGS(:, :) / -8)).^2
scatter(VGS, ID, 'r')
hold on
plot(VGS, ID, 'r', 'linewidth', 2)
grid on
xlabel('V_p')
ylabel('I_D')
title('FET')
legend('I_D')

print Fet.pdf
