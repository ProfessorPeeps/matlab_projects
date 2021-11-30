% Lecture - 4/16/18

clear, clc,
format short, format compact

FILE = 'NASDAQ Experimental Data.xlsx';
Data = xlsread(FILE, 1, 'A:G');

%Extract data from Excel
Stock = Data(:,1)';
Open = Data(:,3)';
Close = Data(:,6)';

Samples = length(Stock);
hist(Close,15);
title('Histogram with 15 bins')
figure

interval = 15;
Centers = min(Close):interval:max(Close);
Freq = hist(Close, Centers)
bar(Centers, Freq)
title('Histogram with centers of 25')
figure

Rel_Freq = Freq / sum(Freq)
bar(Centers, Rel_Freq)
title('Histogram of Relative Frequency')
figure

Density = Rel_Freq / interval
bar(Centers, Density)
title('Histogram of Densities')
A = sum(interval * Density)
figure

% Mean = mean(Close)
% Median = median(Close)
% Mode = mode(Close)
% Range = range(Close)
% Var = var(Close)
% STD = std(Close)

yyaxis left
sortClose = sortrows([Stock Close]);
stairs(sortClose(:,1),sortClose(:,2))
title('Values Opening and Closing')
xlabel('Stock No.'), ylabel('Closing')
yyaxis right
sortOpen = sortrows([Stock Open]);
stairs(sortOpen(:,1),sortOpen(:,2))
xlabel('Stock No.'), ylabel('Opening')
