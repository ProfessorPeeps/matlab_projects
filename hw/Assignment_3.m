% Assignment 3
% Juan Silva
% ECE 309
% Jan. 31, 2018

clear, clc, close all
format short, format compact

% /// PROBLEM SET 4 ///

% 1. Enter the matrices and vectors. Find the product
%    where they exist.

A = [2,3,7;1,2,0;4,1,5];
B = [1,0,9; 2,1,4;3,1,2];
c = [1,2,4];
d = [2,0,3]';

c * A
c * B
A*B
% d * A
display('d * A does not exist')
% 2. If x is the column vector: [x1,x2,x3]', solve the 
% system of equarions Ax = d.

x = inv(A) * d

% 3. Solve the system of equations:
%    3x1 + 2x2 + x3 = 10
%    5x1 + x2 - x3 = -1
%    4x1 - 2x2 + 2x3 = 2

m = [3,2,1;5,1,-1;4,-2,2];
v = [10,-1,2]';

y = inv(m) * v

% 4. Compute A - B;
A - B

% 5. Use scalar expansion to create a new matrix. A_new,
% such that each element of A is decreased by 4.
A_new =  A - 4

%6. For matrix A (in problem 1) find:

%a. the determinant
detA = det(A)
%b. the inverse
inverseA = inv(A)
%c. the eigenvalue and eigenvector
[v, lamda] = eig(A)

    % Double checking answer
    % lamda * v
    % A * v
    
% 7. For vector c, use MATLAB to compute

%a. the number of element or entries
size(c)
%b. the geometric (or Euclidean length)
length(c)

% 8. Create a row vector with 3 entries containing:

% a. the sum of the entries for the 3 columns given 
% in matrix A (from problem 1).
A 
R = sum(A)
% b. the product of the entries for the 3 columns 
% given in matrix A (from problem 1).
A
R = prod(A)

% 9a. Create a 4 x 5 matrix of all 0’s.
zeros(4,5)

% 9b. Create a row vector containing twenty 1’s.
ones(1,20)

% 9c. Create a 5 x 5 identity matrix.
eye(5)

% 10. Consider the vectors  cur = [4  5  6  7] and 
% volt = [2  8  9  3] containing the currents (in Amps) 
% through and the voltages (in Volts) across 4 particular 
% resistors at some point in time. Create a vector containing 
% the power dissipated by the 4 resistors.

%P = iV

cur = [4:7];         %Amps
volt = [2,8,9,3];    %Volts

pwr = cur .* volt    %Watts

% 11. Consider two functions:  s(t) = t^3+ 5  
% and w(t) = 2t^4.  Create a 3-column table, showing t, 
% s(t) and w(t), for t values 0, .25, ..., 2.

t = [0:0.25:2]';
disp('------------------------------')
disp('       t       s(t)      w(t)')
disp('------------------------------')
[ t t.^3+5 2*t.^4]

% 12. A company manufactures 5 disks with radii given (in inches) 
% in the following vector:  rad = [2     2.5    3      5     7].  
% Create a 2-column table, showing the radii for the manufactured 
% disks in column 1 and the corresponding areas (in sq. in.) in 
% column 2.

rad = [2, 2.5, 3, 5, 7]';

disp('------------------------------')
disp('      Radii   Area')
disp('------------------------------')

area = 2*pi .* rad;
[rad  area]

% 13. Create a matrix, say H, whose first row lists 0., 1, ...,9, 
%     whose second row lists 10, 11, ..., 19, ..., and whose 10th
%     row lists 90, 91, ..., 99. 
row = [0:9];
col = [0: 10: 90];
H = row + col'

sum = sum(H)
prod = prod(sum)


% /// PROBLEM SET 5 ///

% 1. For the circuit below, label the bottom left node as “ground;” then

% a. label the unknown nodal voltages;

Vs1 = 12;    %volts
Vs2 = 18;    %volts

R1 = 2;     %Ohms
R2 = 3;     %Ohms
R3 = 2;     %Ohms
R4 = 5;     %Ohms
R5 = 4;     %Ohms
R6 = 1;     %Ohms

G1 = (R1)^-1;
G2 = (R2)^-1;
G3 = (R3)^-1;
G4 = (R4)^-1;
G5 = (R5)^-1;
G6 = (R6)^-1;

a11 = G1 + G2 + G3;
a12 = -G2;
a13 = -G3;       
a21 = -G2;
a22 = G2 + G4 + G5;
a23 = -G5;
a31 = -G3;
a32 = -G5;
a33 = G3 + G5 + G6;

G = [a11,a12,a13;a21,a22,a23;a31,a32,a33]
Is = [(Vs1 + Vs2) * G1; Vs2 * G4; 0 * G6]

v = inv(G) * Is
display('            Volts');

downCurrent = (v(1) - v(3)) / R3 

%2. Notation: In the sketch below, the boxes 
% represent resistors; note that the ground 
% is already labeled.

Vs1 = 8;      %volts
Is = 1e-3;    %amps

R1 = 1e3;     %Ohms
R2 = 2e3;     %Ohms
R3 = 3e3;     %Ohms

G1 = (R1)^-1;
G2 = (R2)^-1;
G3 = (R3)^-1;

a11 = G1+G2+G3;
a12 = -(G3);     
a21 = -(G3);
a22 = G3;

G = [a11,a12;a21,a22]

Ix = [G1 * Vs1; 1e-3];
w = inv(G) * Ix

display('            Volts');

downCurrent2 = (w(1) - 0) / R2 

