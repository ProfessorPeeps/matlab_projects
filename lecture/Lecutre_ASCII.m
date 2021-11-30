 clear, clc
 format short, format compact
 
 while true
      
    value = input('Enter any key: ', 's');
    
    if isempty(value)
        fprintf('\tAbort successful.\n')
        return;
    else
        ascii = single(value);
        fprintf('\tASCII code for %s is: %d\n', value, ascii)
    end
 end