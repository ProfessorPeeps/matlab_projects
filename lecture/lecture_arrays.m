% Lecture 1/29/18
% Arrays

m1 = [1 2 3 4 5 6 7 8 9; 10 11 12 13 14 15 16 17 18; 19 20 21 22 23 24 25 26 27]
m1 = [1:9;10:18;19:27]      % same thing

v1 = [31:39]

m2 = [m1;v1]      % concatonate a matrix and a vector

m3 = [m1 ; v1]    % ???  

v2 = [40:49]

v3 = [v1,v2]    % valid

v4 = [v2,v1]    % have v2 be in front of v1

%m4 = [v2;v1]   % error b/c of different sized vectors

v5 = [v1, 40]

m4 = [v5;v2]

e1 = m1(2, 6)   % read a data value in array

e2 = m1(3, 8)  

e3 = m1(1,5)

% these values must be specified as vectors when prompting for data range

v6 = m1(2,3:6)  % reads a range of data values in array (row)

v7 = m1(1:3,6)  % reads a range of data values in array (column)

v8 = m1(1:2, 5:7) % reads a range of data values in array (column and row)  

v9 = m1(1:3, 2:3)


v9 = m1(:,2:3)   % reads entire row, returns column range

v10 = m1(2,:)   % reads entire column, returns row range 

v11 = m1(3, 6:end)  %specified range until end of matrix of row/column

% Concatonate vectors of different sizes

v1          % 1 x 9 matrix
v2          % 1 x 10 matrix

v2(10) = []   % set element 10 to null

m5 = [v1;v2]    % 2 x 9 matrix ;fixes issue with m4
m6 = [m5;m1]    % 5 x 9 matrix

% magic(n); only when n > 2
magic(3)    % sum of rows, columns, and diagonals is 15.
magic(4)    % sum is 34.

% -----------------------

%transpose
clear, clc

v1 = [0:5]
m1 = [1:4 ; 5:8]

m1T = m1'       % transpose matrix m1

m1T = [10:14 ; 15:19]'

size(m1)        % returns m x n 
size(m1)'       % returns size of transpose
size(v1)        % returns m x 1 or 1 x n 

v2 = [5:13];

length(v2)     % returns row length
length(v2)'    % returns column length
v2'            % transpose row vector

m1
length(m1)     % ???

zeros(2,3)     % matrix consisting of zeroes 
ones(5,6)      % matrix consisting of ones

m1
m1(2,3)        % extract cell
m1(6)

m2 = [1:9;10:18;19:27] 
m2(2,8)       % extract 17  
m2(16)        % incorrect m x n != m(a)
m2(23)        % correct, column dominant
