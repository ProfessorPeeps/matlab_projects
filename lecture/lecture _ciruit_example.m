% Lecture 1/29/18
% Circuit Example

% Find (a) the impedance
% seen by the source and (b) the current through C1

clear, clc, close all
format short, format compact

% Define variables

R = 470;        % Ohms
L = 650e-3;     % Henries
C1 = 4.7e-6;    % Farads
C2 = 1.5e-6;    % Farads
Vs = 120;       % Volts
freq = 60;      % Hertz

% Start code

w = 2 * pi * freq;                 % Omega
xL = j * w * L;                    % Impedence through inductor
xC1 = -j / (w * C1);               % Impedence through capacitor
xC2 = -j / (w * C2);               % Impedence through capacitor 
y = 1/R + 1/xL + 1/xC1 + 1/xC2;      % total admittance
z = 1/y                            % total impedence

[zAng, zMag] = cart2pol(real(z), imag(z))   % get mag and ang

zAngDeg = rad2deg(z)                        %convert rad to deg

current = Vs / z                            % Ohm's Law

[currentAng, currentMag] = cart2pol(real(current), imag(current))
currentAngDeg = rad2deg(currentAng)

% Start plots

t = 0 : 0.001 : 0.02;                      % time in seconds
Vt = 10 * sin(2*pi*freq*t);                 % voltage
It = 3.1831 * sin(2*pi*freq*t - 1.5708);    % current

plot(t, Vt, t, It, 'r--')
grid
title('Voltage and Current Waveforms')
xlabel('Time (s)')
legend('Voltage', 'Current')

