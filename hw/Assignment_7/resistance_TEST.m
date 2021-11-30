size = input('Enter the size of array: ');

array = [];     %initialize array

%Fill array
for n = 1: size 
    element = input('enter value: ');
    array(n) = element;
end

x = input('Enter s for series or p for parallel: ', 's');

    if x == 's'
        series = sum(array);
        fprintf('Series resistance equals %d?.\n', series)
    elseif x == 'p'
        par = prod(array) ./ sum(array);
        fprintf('Parallel resistance equals %d?.\n', par)
    else
       disp('Argument error!')
    end