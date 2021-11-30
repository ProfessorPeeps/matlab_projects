% Lecture - 1/31/18
% Arrays (cont.)

format short, format compact

m1 = [1,2;3,4]
m2 = [5:7]
m3 = [8:10]'
m4 = [11:13]

% array addition
m = m2 + m4

% scalar expansoin
5 + m1       

% this works too
[5:7] + [1:3;4:6;7:9] 

% *** Matrix multiplication ***

%%error = m2 * m4

a1 = [1:3;4:6]          % 2x3
a2 = [4:8;8:12;15:19]   % 3x5
a3 = [1:5;6:10]'        % 5x2

a = a1 * a2 * a3 

% Element by element: .* ./ .^
[1:3] .* [4:6]

[1,2;3,4] .* [5,6;7,8]  
[1,2;3,4] * [5,6;7,8]

% Array addition and subtraction
[1,2;3,4] + [5,6;7,8]  

%%error = [1,2;3,4] .+ [5,6;7,8]  

% Array division
[1:3] / [4:6]  
[1:3] ./ [4:6]      % ???

[1,2;3,4] / [5,6;7,8]  % ???
[1,2;3,4] ./ [5,6;7,8]  

4\5     % (a / b)^-1
4/5     %  a / b

% Array exponents
power([1:3],3)
[1:3] .^3  

% Systems of linear equations

% ---
% x1 + x2 + 3 * x3 = -3
% 2x1 - 3x2 + 2 * x3 = -8
% x1 + 2 * 2x - x3 = -7
% ---

A = [1,1,3;2,-3,2;1,2,-1]
B = [-3,-8,7]'

% How to solve system of equations
% -------
% Ax = b
% A^-1 * Ax = A^-1 * b
% x = A^-1 * b

x = inv(A) * B
x = A\B
%%x =  A/B (error)

x1 = x(1)
x2 = x(2)
x3 = x(3)

% *** EXAMPLE 1 ***

spd = [4,3.2,7,9]
time = [1,2,4.3,0.2]

dis = spd .* time

% *** EXAMPLE 2 ***
n = [0:0.5:10]';
powers = [n n.^2 n.^3]
disp('------------------------------')
disp('|   n      | n^2     |  n^3  |')
disp('------------------------------')
disp(powers)

% *** EXAMPLE 3 ***

% s(t) = t^2 + 2t  (0 <= t <= 5)

t = [0:5];
s = t.^2 + 2 * t;
[t',s']


x1 = []
%x2 =  
x3 = '0'
x4 = single(0)
x5 = single('0')

whos