function [o1, o2, o3] = TestNargin(i1,i2,i3)

format compact
disp('Hello!')
nargin
nargout

    if nargin == 1
        celcius = 5/9 * (i1 - 32);
        o1 = celcius; 
    elseif nargin == 2
        prod = i1 * i2;
        o1 = prod;
    elseif nargin == 3
        sum = i1 + i2 + i3;
        o1 = sum;  
    elseif nargout == 1 
        o1 = 'Only one output requested'
    end
end
