% Assignment 1

% Juan Silva
% ECE 309
% Jan. 24, 2018

% Program Name: phasers.m
% Author: XXXXXXX Last Modified: XXXXXXX
% Description: XXXXXXXXXXXX

clear, clc, close all
format short, format compact

% ********************
% * Define variables *
% ********************

R = 1e3;         % Ohms
C = 3900e-12;    % Farads
L = 5.3e-3;       % Henries
Vs = 10;         % Volts
freq = 100;      % Hertz

% **************
% * Start Code *
% **************

w = 2 * pi * freq;          % Omega
xL = j * w * L;      
xC = -j / (w * C);
y = 1/R + 1/xL + 1/xC       % total admittance
z = 1/y                     % total impedence

[zAng, zMag] = cart2pol(real(z),imag(z))

zAngDeg =rad2deg(zAng)

current = Vs / z            % current 
[CurrentAng, CurrentMag] = cart2pol(real(current),imag(current))
currentAngDeg = rad2deg(CurrentAng)

% ***************
% * Start Plots *
% ***************

t = 0 : 0.0001 : 0.02;                    % time in seconds
Vt = 10 * sin(2*pi*freq*t);             % voltage
It = 3.1831 * sin(2*pi*freq*t - 1.5677);
plot(t, Vt, t, It, 'r--')
grid
title('Voltage and Current Waveforms')
xlabel('Time (s)')
legend('Voltage', 'Current')