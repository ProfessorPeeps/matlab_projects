clear, clc, close all
format short, format compact

FILE = xlsread('DATA_MyExperiment.xlsx', 1, 'A:C');

in = input('Enter a command: ', 's');

switch in
    case 'TOTAL'
        i1 = input('Enter a value for a: ');
        i2 = input('Enter a value for b: ');
        [o1] = compute(i1,i2);
        fprintf('%d', o1)
        
    case 'MINMAX'
        i1 = FILE;
        [o1, o2] = compute(i1);
        fprintf('max = %3.2f, min = %3.2f\n', o1, o2)
    otherwise
        o1 = compute(i1,i2,i3);
        disp(o1)
end