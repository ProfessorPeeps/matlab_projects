clear, clc, close all
format short, format compact

%Table variables
var1 = ['x' 'y' 'z']';           %Systems 1 - 3 
var2 = ['x' 'y']';               %System 4
var3 = ['v' 'w' 'x' 'y' 'z']';   %System 5

% ******** Question 1 ********
A = [3 4 1; 2 -2 -1; 5 4 0.5];
b = [7 -1 9];
[Ap1, bp1, X1, Xinv1] = Solve(A,b);
table(var1,X1,Xinv1,'VariableNames',{'Unknowns'  'Solve' 'Inv'})
fprintf('\n\t\t\t\tSystem 1\n')

% ******** Question 2 ********
A = [1 0 1; 2 -1 -1; 7 -2 2];
b = [12 1 8];
[Ap2, bp2, X2, Xinv2] = Solve(A,b);
table(var1,X2,Xinv2,'VariableNames',{'Unknowns'  'Solve' 'Inv'})
fprintf('\n\t\tSystem 2\n')

% ******** Question 3 ********
A = [1 -1 2; 0 0 4; 0 2 -1];
b = [22 44 9];
[Ap2, bp2, X2, Xinv2] = Solve(A,b);
table(var1,X2,Xinv2,'VariableNames',{'Unknowns'  'Solve' 'Inv'})
fprintf('\n\t\tSystem 3\n')

% ******** Question 4 ********
A = [0.0001 1; 1 1];
b = [1 2];
[Ap4, bp4, X4, Xinv4] = Solve(A,b);
table(var2,X4,Xinv4,'VariableNames',{'Unknowns'  'Solve' 'Inv'})
fprintf('\n\t\t\t\tSystem 4\n')

% ******** Question 5 ********
A = [0 -1 2 1 1; 1 1 1 -1 1; 2 1 3 2 2; 2 -3 -4 3 0; 1 5 0 0 -1];
b = [4 4 12 7 -1];
[Ap5, bp5, X5, Xinv5] = Solve(A,b);
table(var3,X5,Xinv5,'VariableNames',{'Unknowns'  'Solve' 'Inv'})
fprintf('\n\t\t\t\t\tSystem 5\n')