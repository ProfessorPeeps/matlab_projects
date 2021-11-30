clear, clc, close all
format compact, format short

%Elements in circuit
Ra = 10;         %resistor
La = 0.5e-3;     %inductor
B = 0.1;         %damping ratio
J = 0.01;        %moment of inertia
K = 0.1;         %EMF and torque constant

Step = 0;        %step time value
FV = 900;          %final value for step time

FromSimulink =  sim('Assignment8', 'StopTime', '15');  %Starts simulation
FromSimulink.who;
FromSimulink.Case2;

Time =                 FromSimulink.tout;
Voltage =              FromSimulink.Case2(:,1);
Current =              FromSimulink.Case2(:,2);
Direction =            FromSimulink.Case2(:,3);
Speed =                FromSimulink.Case2(:,4);

subplot(2,1,1)
title('Case 2 - System w/ Position Feedback Only')

yyaxis left
plot(Time, Voltage)
ylabel('Voltage (Volts)')

yyaxis right
plot(Time, Current)
xlabel('Time (sec)')
ylabel('Current (Amps)')

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
