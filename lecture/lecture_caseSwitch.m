clear, clc
format compact

% Use a switch instead of if-else statements
% if x == 1
%     fomat short
% elseif x == 2
%     format long
% else
%     format loose
% en

%based on input, it will format. Use console to test after running program.    
x = input('Enter any value: ');

switch x
    case 1 
        format short
    case 2 
        format long
    otherwise
        format loose
end

%Example from previous while loop using cases. Format input still applies

while true
    
n = input('Enter a signed value: ');

%case only does true or false. Cannot do > or <.
switch n
    case n > 0
        disp('signum(x) = 1')
    case n < 0
        disp('signum(x) = -1')
    case n == 0
        disp('signum(x) = 0')
end

    if isempty(n) == true
        break
    end

end