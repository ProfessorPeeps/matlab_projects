%% lecture 2/12/18
%% graphing

clear, clc, close all
format compact, format short

Na = 8000;               % samples / sec
Ts = 1/Na;               % time step size
Freq = 100;              % hertz
Period = 1/Freq;         % sec
Omega = 2*pi*Freq;       % radians / sec

%t = 0 : Ts : 5 * Period;       %plot()
t = linspace(0,5*Period,80);    %linspace()

n = 0:0.01:0.05;

Vt = 10*cos(Omega*t);
It = 0.3*sin(Omega*t);      % Use yyaxis for small values like this one (0.3)

Xn = 100*n;

plot(t,Vt,'-ro',t,It,'--b+');
plot(t,Vt,'-ro')

hold on                    %removing hold on will overwrite graph

plot(t,It,'--b+')

stem(n,Xn)                 % stem()

%legend('Voltage(Volts)', 'Current(Amps)')
figure

% ** yyaxis **

%right side
yyaxis right
plot(t,Vt,'-ro')
xlabel('Time (sec)')
ylabel('Voltage (V)')
grid

%left side
yyaxis left
plot(t,It,'--b+')
xlabel('Time (sec)')
ylabel('Voltage (V)')
grid

%2x2 graph
figure

%volts
subplot(3,2,1)
plot(t,Vt,'-ro')
xlabel('Time (sec)')
ylabel('Voltage (V)')
grid

figure
%current
subplot(3,3,3)
plot(t,Vt,'--b+')
xlabel('Time (sec)')
ylabel('Current (I)')
grid
figure
%stem
subplot(3,5,1)
stem(n,Xn)
xlabel('n (digits)')
ylabel('Xn')
grid




