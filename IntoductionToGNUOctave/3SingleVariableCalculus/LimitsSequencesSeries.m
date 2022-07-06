# Anonymus function
f = @(n) (1 + 1./n).^n;
k = [0 : 1: 9]'
format long
n = 10.^k
f(n)



