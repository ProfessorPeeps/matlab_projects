%Review
format short, format compact
clear all, clc


% Lecture 1 
a = single(0)
b = double(0)
c = single('0')
d = double('0')

whos

x = 3 + j*4

rad = angle(x)
deg = rad2deg(rad)

rad2 = (cart2pol(real(x), imag(x)))
deg2 = rad2deg(cart2pol(real(x), imag(x)))

%ln3
log(3)
%log3
log10(3)
%evaluate e^5.6
exp(5.6)
%tan(30 deg)
tand(30)
%tan(0.2 rad)
tan(0.2)
% x = 3, y = 5, theta = ?
atan2(5,3)
cart2pol(3,5)
% write to polar form 5 + 7i
x = 5 + j*7;
[theta, r] = cart2pol(real(x), imag(x))

% Lecture 2

x = 3 + 4*i;

mag = abs(x)
[theta, r] = cart2pol(real(x), imag(x))

[x,y] = pol2cart(theta, r)

% ***********************

% Variables
r = 1e3;        %ohms
c = 3900e-12;    %farads
l = 5.3e-3;      %henries
V = 10;         %volts
f = 100;         %hertz

% equations

w = 2 * pi * f;
Zc = -j / (w*c);
Zl = j * w * l;

y = inv(r + Zc + Zl);
z = inv(y)