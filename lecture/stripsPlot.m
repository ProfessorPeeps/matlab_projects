%% Program Name: stripsPlot.m
%% Authored By: Juan Silva
%% Date Modified: 2/21/18
%% Description: Plots a strip chart as a function of frequency.

%% Lecture - 2/21/18
%% Strips
clear clc, close all
format short, format compact

% freq = 250*sin(2*pi*2*t);
% y = sin(2*pi*freq*t);

fs = 1000;      %sample
ts = 1/fs;      %time value
t = 0:ts:2;     %2 seconds of time values
                
f = 250 + 240 * sin(2*pi*t);    %message
Signal1 = sin(2*pi*10*t);
Signal2 = sin(2*pi*50*t);  
Signal3 = sin(2*pi*100*t);
SignalFreq = sin(2*pi*f.*t);        %FM waveform (2 sec. worth)
%strips(x, .25, fs)                  %strip plot (0.25 sec. worth)

%Plot Signal 1
subplot(3,1,1)
title('10 Hz Signal & Freq')
yyaxis left
plot(t, f)
ylabel('Frequency Waveform')
yyaxis right
plot(t, Signal1)
ylabel('10Hz Signal')
grid

%Plot Signal 2
subplot(3,1,2)
title('50 Hz Signal & Freq')
yyaxis left
plot(t, f)
ylabel('Frequency Waveform')
yyaxis right
plot(t, Signal2)
ylabel('50Hz Signal')
grid

%Plot Signal 3
subplot(3,1,3)
title('100 Hz Signal & Freq')
yyaxis left
plot(t, f)
ylabel('Frequency Waveform')
yyaxis right
plot(t, Signal3)
ylabel('100Hz Signal')
grid

figure
strips(SignalFreq, 0.25, fs)    %function, width, # of samples
grid