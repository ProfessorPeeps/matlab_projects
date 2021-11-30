clear, clc
format short, format compact

a = input('Enter value for side a: ');
b = input('Enter value for side b: ');
c = input('Enter value for side c: ');

[per,area] = triangles(a,b,c);

fprintf('The perimeter of a triangle with sides %d, %d, %d equals %d.\n', a, b, c, per)
fprintf('The area of a triangle with sides %d, %d, %d equals %d.\n', a,b,c,area)
