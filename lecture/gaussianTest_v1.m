clear, clc, close all
format short, format compact

A = [1 2 1; 2 -1 -1; 3 1 2];
b = [1 6 1];

N = length(A);

%k = input('Enter column number to solve: ');

% if k >= 3 || k < 0 
%     disp('Choose an appropriate column that will solve for zeroes.')
%     return
% end

M = gaussian(A,b)
rref(M)