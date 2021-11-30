clear, clc
format short, format compact

l = input('Enter length of the plate (in m): ');
w = input('Enter width of the plate (in m): ');
d = input('Enter distance between both plates (in m): ');
p = input('Enter permativity: ');

cap = capacitance(l,w,d,p);

fprintf('\nThe capacitance of a plate with %.3fm length', l)
fprintf(' and %.3fm width with distance %.4fm and %.2f permitivity is %dF.\n',w,d,p,cap) 


