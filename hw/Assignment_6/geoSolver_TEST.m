% Function will solve the chess problem

clear, clc
format short, format compact

a = input('Enter first term (a): ');
r = input('Enter common term (r): ');
n = input('Enter # of terms (N): ');

A = [a r n];
s = GeoSolver(A);

fprintf('The sum of the geometric series equals %d.\n', s)