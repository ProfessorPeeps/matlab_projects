clear, clc
format short, format compact

total = input('Enter data size: ');

for n = 1: total

sales = input('Enter sales: ')
exp = input('Enter expenses: ')    

PL = Prof_Loss(sales, exp);


end

fprintf('$%5.2f $%5.2f $%5.2f.\n', sales, exp, PL)

