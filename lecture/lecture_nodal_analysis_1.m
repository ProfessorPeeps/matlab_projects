% Lecture - 2/5/18
% Nodal Analysis

clc, clear
format short, format compact

% Define variables
r1 = 1e3;           %Ohms
r2 = 4e3;           %Ohms
r3 = 2e3;           %Ohms
r4 = 5e3;           %Ohms
Vs = 10;            %Volts
Is = 1e-3;          %Amps

% Convert resistance to conductance
g1 = (r1)^-1;
g2 = (r2)^-1;
g3 = (r3)^-1;
g4 = (r4)^-1;

% Calculate square matrix elements:
% [a11, a12] ---> [(G1 + G2 + G3)   -G3] [V1] = [G1 * Vs]
% [a21, a22] ---> [-G3        (G3 + G4)] [V2] = [   Is  ]

a11 = g1 + g2 + g3;
a22 = g3 + g4;

% Create matrix 
A = [a11, -g3; -g3, a22]    % Square matrix is sum of conductances
B = [(g1 * Vs), Is]';       % Vector column is Current from node V1 and V2

% Solve mattrix X = A^-1 * B
x = inv(A) * B              % x contains voltages V1 and V2
display('               Volts');

% Solve for currrent b/w node V1 and V2
Ix = (x(1) - x(2)) *  g3    % I = (v1 - v2)/ R3
display('               Amps');