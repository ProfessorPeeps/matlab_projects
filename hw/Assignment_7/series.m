% Assignment 7
% Juan Silva
% ECE 309
% Mar. 26, 2018

clear, clc, close all
format short, format compact

%Problem 4
s = 1;
n = 0;

while true

s = s + (2^-(n + 1));
n = n + 1;

if s >= 1.999
    break
end

fprintf('%f\n', s)

end

fprintf('The sum will equal 1.999 after %d terms.\n', n)

