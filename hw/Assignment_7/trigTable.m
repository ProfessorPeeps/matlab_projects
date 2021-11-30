%function [x1,x2] = trigTable

x = linspace(0,2*pi,10);

disp('  x     cos(x)      sin(x) ')
disp('--------------------------')

for i = 1: length(x)
    fprintf('%5.3f  %8.5f   %8.5f\n', x(i), sin(i), cos(i)) 

end
