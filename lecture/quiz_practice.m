close, clc, clear
format short, format compact

%1a.
% 3x = 10
% 4x = 5

A = [3 4]';
b = [10 5]';

x1 = A' * b / sqrt(A(1)^2 + A(2)^2)^2
x2 = pinv(A)*b

%1b.
% 2x = 6
% 3x = 10
% 4x = 11
% 5x = 16

A = [2 3 4 5]';
b = [6 10 11 16]';

x3 = A' * b / sqrt(A(1)^2 + A(2)^2 + A(3)^2 + A(4)^2)^2
x4 = pinv(A)*b

%1c. 
% x1 + (2)x2 = 4
% x1 + (5)x2 = 3
% x1         = 5

a1 = [1 1 1]';
a2 = [2 5 0]';

A = [a1 a2];
b = [4 3 5]';

x5 = inv(A' * A) * (A' *b)
x6 = pinv(A)*b

%2a.
%   t      y 
%   0     -1
%   1      2
%   3      2
%   4      5

A = [0 1 3 4]';
b = [-1 2 2 5]';

x = (A' * b) / sqrt(A(1)^2 + A(1)^2 + A(1)^2 + A(4)^2).^2