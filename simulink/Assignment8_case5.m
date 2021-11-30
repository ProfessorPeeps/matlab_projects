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

FromSimulink =  sim('Assignment8', 'StopTime', '1');  %Starts simulation
FromSimulink.who;
FromSimulink.Case5;

Time =                 FromSimulink.tout;
Voltage =              FromSimulink.Case5(:,1);
Current =              FromSimulink.Case5(:,2);
Direction =            FromSimulink.Case5(:,3);
Speed =                FromSimulink.Case5(:,4);

subplot(2,1,1)
title('Case 5 - Remove Speed feedback')

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