% Lecture - 2/5/18
% Nodal Analysis

clc, clear
format short, format compact

% Define variables
r1 = 10;           %Ohms
r2 = 20;           %Ohms
r3 = 30;           %Ohms
r4 = 40;           %Ohms
Vs = 7;            %Volts
Is1 = 4;          %Amps
Is2 = 1;

% Convert resistance to conductance
g1 = (r1)^-1;
g2 = (r2)^-1;
g3 = (r3)^-1;
g4 = (r4)^-1;
% Calculate square matrix elements:
% [a11, a12, a13] ---> [(G1 + G2 + G4)  -G2   -G4] [V1] = [ (Vs * G1) ]
% [a21, a22, a23] ---> [-G2        (G2 + G3)    0] [V2] = [ (0 - Is1) ]
% [a31, a32, a33] ---> [-G4         0          G4] [V3] = [(Is1 - Is2)]
 
a11 = g1 + g2 + g4;
a21 = g2 + g3;

b11 = (Vs * g1);
b21 = (0 - Is1);
b31 = (Is1 - Is2);

% Create matrix 
A = [a11, -g2, -g4; -g2, a21,0; -g4, 0, g4];     
B = [b11, b21, b31]';      % Vector column is Current from node V1 and V2

% Solve mattrix X = A^-1 * B
x = inv(A) * B              % x contains voltages V1 and V2
display('            Volts');

% Solve for currrent b/w node V1 and V2
%Ix = (x(1) - x(2)) *  g3    % I = (v1 - v2)/ R3
%display('               Amps');