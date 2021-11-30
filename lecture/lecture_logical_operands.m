%% Lecture - 2/14/18
%% Logical & Comparison Operations

A = [0:2]
B = [3,2,1]

C = A < B
v1 = A < 1
v2 = A <= 1
v3 = B > 2
v4 = A >= B
v5 = A == B

D = [1,0,1,0]
v6 = ~D
v7 = ~(A>=B)    %% [0 0 1] --> [1 1 0]
v8 = (A~=B)     %% ~[A == B] --> [1 1 1]

v9 = (A < 1) & (B > 2)
v10 = (A < 1) | (B > 2)
v11 = 

% 
% bits = [0,0,1,1;0,1,0,1]'
% 
% x = bits(1:4)'
% y = bits(2:)'