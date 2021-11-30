%Main Script
% Program Name: finance_TEST.m
% Author: Juan Silva Last Modified: Mar. 27, 2018
% Description: This program prompts the user to enter investment value information and calculates the number of years necessary to reach the final investment period.


clear, clc, close all
format compact, format short

%Elements in circuit
Ra = 10;         %resistor
La = 0.5e-3;     %inductor
B = 0.1;         %damping ratio
J = 0.01;        %moment of inertia
K = 0.1;         %EMF and torque constant

Step = 0;        %step time value
FV = 10;          %final value for step time
lim = 10 * (La/Ra);

FromSimulink =  sim('Assignment8', 'StopTime', '2');  %Starts simulation
FromSimulink.who;
FromSimulink.Case3;

Time =                 FromSimulink.tout;
Voltage =              FromSimulink.Case3(:,1);
Current =              FromSimulink.Case3(:,2);
Direction =            FromSimulink.Case3(:,3);
Speed =                FromSimulink.Case3(:,4);

subplot(2,1,1)
title('Case 3 - System w/ Speed Feedback Only')

yyaxis left

plot(Time, Voltage)
ylabel('Voltage (Volts)')

yyaxis right
plot(Time, Current)
xlabel('Time (sec)')
ylabel('Current (Amps)')

xlim( [0 lim])
legend('Voltage', 'Current')

subplot(2,1,2)

yyaxis left
plot(Time, Direction)
ylabel('Position (degrees)')

yyaxis right
plot(Time, Speed)
xlabel('Time (sec)')
ylabel('Speed (RPM)') 
legend('Position', 'Speed')