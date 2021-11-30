clear, clc
format short, format compact

r = input('Enter value for radius: ');

area = circle_area(r);

fprintf('The area of a circle with radius %d is %5.2f\n', r, area)

