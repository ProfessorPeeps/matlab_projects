clear, close, clc
format short, format compact

a1 = [1;1;1];
a2 = [2;5;0];

A = [a1 a2];
b = [4;3;5];

x = inv(A' * A) * (A' * b)

%************

a1 = [0 1 3 4]';
a2 = [1 1 1 1]';

A = [a1 a2];
b = [-1 2 2 5]';

x = inv(A' * A) * (A' * b);

M = x(1)
B = x(2)

y = 1.28 * a1 - 0.4

fprintf('\n')
disp('     t     y')
disp([a1 b])

subplot(2,1,1)
plot(a1, b, 'ro', a1, y)
grid
title('y = Mx + B')
ylabel('Yi')
xlabel('Ti')
legend('Data Plots (t,y)','Best Fit Line')

%**************

a1 = [0 1 2 3]'.^2;
a2 = [0 1 2 3]';
a3 = [1 1 1 1]';

A = [a1 a2 a3];
b = [0 2.3 2 10]';

x = inv(A' * A) * (A' * b);

E = x(1)
D = x(2)
C = x(3)

%define plots for x-axis
xplot = [0:0.0001:3];

y = E .* xplot.^2 + D.*xplot + C;
y2 = E .* a2.^2 + D.*a2 + C;

sse = sum((y2- b).^2)

subplot(2,1,2)
plot(a2, b, 'ro', xplot, y)
title('y = Et^2 + Dt + C')
ylabel('Yi')
xlabel('Ti')
grid
legend('Data Plots (t,y)','Best Fit Line')
