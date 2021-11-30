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
lim = 5 * (La/Ra);

FromSimulink =  sim('Assignment8', 'StopTime', '2');  %Starts simulation
FromSimulink.who;
FromSimulink.Case1;

Time =                 FromSimulink.tout;
Voltage =              FromSimulink.Case1(:,1);
Current =              FromSimulink.Case1(:,2);
Postion =              FromSimulink.Case1(:,3);
Speed =                FromSimulink.Case1(:,4);

subplot(2,1,1)
title('Case 1 - System w/o Positon and Feedback')

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
plot(Time, Postion)
ylabel('Position (degrees)')

yyaxis right
plot(Time, Speed)
xlabel('Time (sec)')
ylabel('Speed (RPM)')

legend('Position', 'Speed')

