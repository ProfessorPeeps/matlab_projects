clear, clc, close all
format short, format compact

FILE = xlsread('DATA_MyExperiment.xlsx', 1, 'A:C')

in = input('Enter a command: ', 's');

switch in
    case 'TOTAL'
        i1 = input('Enter a value for a: ');
        i2 = input('Enter a value for b: ');
    
    case 'MINMAX'
    
    otherwise
        compute;
end
            
        
