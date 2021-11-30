% Assignment 2
% Juan Silva
% ECE 309
% Jan. 31, 2018

clear, clc, close all
format short, format compact

% /// PROBLEM SET 3 ///

%1. Enter the matrices:

A = [2,3,7;1,2,0;4,1,5]
B = [1,0,9;2,1,4;3,1,2]

%a. Define the row vector a as the first row of matrix A, by selecting
% the elements from A
a = A(1,:)     

% b. Define the column vector b as the first column of matrix B, by
% selecting the elements from B
b = B(1,:)   

% c. Define scalar c as the element in row 2, column 3 of matrix B,
% by selecting the element from B.
c = B(2,3)      

% d. Define the submatrix C as the 2 x 2 upper-left submatrix of A, by
% selecting the elements from A.
C = A(1:2,1:2)

% e. Construct a row vector x, consisting of: 1, 1.08, 1.16, …, 1.88
x = [1:0.08:1.88]

% f. Construct a column vector y that is the transpose of vector x. 
x'

% 2. Enter the vectors:
x = [1,2]'
y = [3,4]'

% a. concatenate x and y so that y is to the left of x
[y,x]

% b. concatenate x and y so that y is underneath x
[x;y]

% 3.  Create a new matrix, A_new, containing only the 1st and 2nd rows
% of the given matrix A (from problem 1), by deleting row 3 of A.
A = [2,3,7;1,2,0;4,1,5]
A(3,:) = [];

A_new = A