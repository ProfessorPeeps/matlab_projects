% Function will add two resistors
% in parallel and give equivalent resistance

function[per, area] = triangles(a, b, c)

per = a + b + c;

s = per / 2;
area = sqrt(s * (s - a) * (s - b) * (s - c));
end

