% Function will add two resistors
% in parallel and give equivalent resistance

function[per, area] = triangles(a, b, c)

if((a + b) < c || (b + c) < a || (a + c) < b)
    disp('Error. The sum of any two sides must be greater than the length of the third side.')
    return
end

per = a + b + c;
    
s = per / 2;
area = sqrt(s * (s - a) * (s - b) * (s - c));

end

