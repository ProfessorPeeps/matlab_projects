% Assignment 1
% Juan Silva
% ECE 309
% Jan. 22, 2018

clear, clc, close all
format short, format compact


% /// PROBLEM SET 1 ///

% 1. Calculate:

% a.  
23^4 - 4 * 13^.5
% b. 
4 * pi - 18^3
% c.
log10(37)
% d.
log(37)
% e.
sin(1)
% f.
cosd(60)
% g.
exp(2)
% h.
atan(1/2)
% i.
log2(64)
% j.
nthroot(32,5)
% k.
1 / sqrt(2) - nthroot(5,3)

% 2. Find the area of a circle with radius 5 inches.

radius = 5;              % radius in inches.
area = pi * radius^2     % area in inches squared.

% 3.  Use the formulas V = I R (Ohm’s Law) and P = V2/R to 
%     find the voltage (V) across and power (P) dissipated by a 
%     resistor if the current (I) through the resistor is 5 amps 
%     and the resistor value R is 100 ohms.

R = 100;                 % resistance in Ohms.
i = 5;                   % current in Amps.
v = i * R    
p = v^2 / R 


% /// PROBLEM SET 2 ///

%1. Find the angle, theta, for the number: x = 1 + sqrt5 * j.
          
degX = atan2d(sqrt(5),1)       % theta = arctan(b/a) in degrees                              
                            
%2. Find the magnitude of the complex number x above.

x = 1 + sqrt(5) * j;           % define cartesian coordinates
magX = abs(x)                  % find magnitude

%3. Write x in the form re^j?.

    % 2.4495e^j * 65.9052

%4. Change to polar form: y = 5 + 12 j 

y = 5 + 12 * j;
[Ang, Mag] = cart2pol(real(y), imag(y));   % find magnitude and angle
Ang = rad2deg(Ang)                         % convert radian to degrees
Mag                                        % display magnitude

%5. Change to Cartesian Coordinates: 2e^j60
                             
[a, b] = pol2cart(deg2rad(60), 2)        % find x and y components
                                         % theta must be in radians

%6. Change to Cartesian Coordinates: 4e^0.2j

e = exp(1);
z = 4 * e^(0.2 * j)
                              
% 7. Simplify: (4+j)/(5 – 2j), and write the answer 
%    in polar and rectangular form. 

w = (4 + 1*j) / (5 - 2j)                 % w in cartesian form
                                            % simplify using conjugates
[degY, magY] = cart2pol(real(w), imag(w))   % convert to polar form

Ang = rad2deg(degY)

% 8. Simplify: (4+2j) * (2 + 5j), and write the answer 
%    in polar and rectangular form. 

u = (4 + 2*j) * (2 + 5*j)

[degU, magU] = cart2pol(real(u), imag(u))

Ang = rad2deg(degU)

% ----------------------------------------------------------- %

% 9. Use phasors and MATLAB to find the impedance seen by the
% source and the current coming out of the source if the source
% voltage is: V(t) = 10 sin(2*pi*100t).

% Program Name: phasers.m
% Author: Juan Silva Last Modified: Jan. 25, 2018
% Description: XXXXXXXXXXXX

% clear, clc, close all
% format short, format compact

% ********************
% * Define variables *
% ********************

R = 1e3;         % Ohms
C = 3900e-12;    % Farads
L = 5.3e-3;      % Henries
Vs = 10;         % Volts
freq = 100;      % Hertz

% **************
% * Start Code *
% **************

w = 2 * pi * freq;          % Omega
xL = j * w * L;             % Impedence through inductor
xC = -j / (w * C);          % Impedence through capacitor
y = 1/R + 1/xL + 1/xC;      % total admittance
z = 1/y                     % total impedence

[zAng, zMag] = cart2pol(real(z),imag(z))    % get mag and deg (in rad)

zAngDeg =rad2deg(zAng)                     % convert rad to deg

current = Vs / z                            % current 

[CurrentAng, CurrentMag] = cart2pol(real(current),imag(current))
currentAngDeg = rad2deg(CurrentAng)         % convert to polar
phase = (( 0.0075 - 0.005) / 0.01) * 360           % (dT / T) * 2pi 


% ***************
% * Start Plots *
% ***************

t = 0 : 0.0001 : 0.02;                      % time in seconds
Vt = 10 * sin(2*pi*freq*t);                 % voltage in time
It = 3.1831 * sin(2*pi*freq*t - 1.5677);    % current in time


plot(t, Vt,'r', t, It, 'b--')
grid
title('Voltage and Current Waveforms')
xlabel('Time (s)')
legend('Vs(t)', 'Is(t)')