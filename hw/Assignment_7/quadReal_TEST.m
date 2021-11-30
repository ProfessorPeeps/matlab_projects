clear, clc
format short, format compact

a = input('Enter coeff for a: ');
b = input('Enter coeff for b: ');
c = input('Enter coeff for c: ');

[x1,x2] = quadReal(a,b,c);

if((b^2) < (4 * a * c))
    disp('Sorry, the roots are complex.');
    return
end

fprintf('(%d)x^2 + (%d)x + (%d) roots equal %.2f and %.2f\n', a, b, c, x1, x2)
