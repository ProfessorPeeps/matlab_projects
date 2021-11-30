% Lecture - 4/16/18

clear, clc,
format short, format compact

FILE = 'NASDAQ Experimental Data.xlsx';
Data = xlsread(FILE, 1, 'A:G');

number = Data(1:40,1)';
open = Data(1:40,3)';
high = Data(1:40,4)';
low = Data(1:40,5)';
close = Data(1:40,6)';
volume = Data(1:40,7)';

%test
[Null, String] = xlsread(FILE, 1, 'A:B');
dates = String(1:40,2);

plot(number, open, number, high, number, low, number, close)
title('NASDAQ Experimental Data')
legend('open', 'high', 'low', 'close')
xlabel('Number')
ylabel('Data')
grid