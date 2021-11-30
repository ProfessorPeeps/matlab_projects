clear, clc, close
format long

% Part 2
x = (pi/180) .* [0 : 30 : 360];     %matrix from 0 - 360°
Term2 = SeriesCos(x,2);
Term4 = SeriesCos(x,4);
Term6 = SeriesCos(x,6);

A = [rad2deg(x);x;Term2;Term4;Term6];

fprintf('Theta\t\tcos(x)\t\t2 Terms\t\t\t4 Terms\t\t6 Terms\n');
fprintf('%3.f°\t\t %7.3f\t\t%7.3f\t\t%7.3f\t\t%7.3f\t\t\n', A);

% Part 3
x = pi/4;
n = 3;

TermN = SeriesCos(x);
Term3 = SeriesCos(x,n);

B = [rad2deg(x);TermN;Term3];

fprintf('\nTheta\t\t? Terms\t\t 3 Terms\n');
fprintf('%3.f°\t\t%6.3f\t\t%6.3f\n', B);