% Function will add two resistors
% in parallel and give equivalent resistance

function[cap] = capacitance(l,w,d,p)

e = 8.854e-12;

a  = (l * w);
cap = (a * e * p) / d;

end