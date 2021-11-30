% Lecture - 2/19/18
% Logical Built-in Functions

format short, format compact

A = -10:1:10;   % A = [-10,-9,-8...0...9,10]
C = all(A < 5)  % should return false
D = any(A < 5)  % should return true

[row, col] = find(A < 5);

M = magic(10);
[r,c] = find(M > 15);       %check for all #s >= to 15
display('-----------------')
display('    row    column')
Table = [r,c]

% *** GRAPHS ***

%Unit step function 
y = sin(2*pi*1*t);
%plot(t,y);

t = -10:0.01:10;
u = t >= 0;
u1 = t >=5;
%plot(t,u);
ylim([-1,2]);

y1 = (u1 .* y);
%hold
%figure
%plot(t,y1);

%u2 = u(t-3) - u(t-8)

uA = t >= -3;
uB = -(t >= 8);
u2 = uA + uB;
%plot(t,u2)

clear, clc, close all

samples = 2000;
ts = 1 / samples;
t = 0:ts:5;
freq = 1;

y1 = sin(2*pi*freq*t);
y2 = sin(2*pi*freq*2*t);
y3 = sin(2*pi*freq*4*t);

%f1 = 0 < t < 1 
%f2 = 1 < t < 2
%f4 = 2 < t < 3
%f2 = 3 < t < 4
%f1 = 4 < t < 5

sw1 = (t < 1);
sw2 = (t >= 1) & (t < 2);
sw3 = (t >= 2) & (t < 3);
sw4 = (t >= 3) & (t < 4);
sw5 = (t >= 4);

y = sw1 .* y1 + sw2 .* y2 + sw3 .* y3 + sw4 .* y2 + sw5 .* y1;
    
plot(t,y);

% *** Square Waves ***

sample = 100;
ts = 1/sample;
f = 200;            %Khz
t = 0:ts:3/f;
D = 75;

y = 2 * square(2*pi*f*t, D);
plot(t,y);

% *** SAWTOOTH ***

sample = 10000;
ts = 1/sample;
f = 200;            %Khz
t = 0:ts:5/f;
k = 1;

y = sawtooth(2*pi*f*t, k);
ylim([-4,4])
plot(t,y);


% *** MATRIX REPLICATION ***
A = [1:3]
B = repmat(A,2,3)   %matrix repeated 3 times by row and 2 times per column 
C = repmat(A,1,3)   %3 times per row and 1 time per column


x1 = ones(1,4);
x2 = zeros(1,6);
N = 5;

x = [x1 x2];
xr = repmat(x,1,N);
n = 0: length(xr) - 1;

stem(n, xr);
