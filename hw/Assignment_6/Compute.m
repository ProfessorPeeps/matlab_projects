function [o1,o2] = Compute(i1,i2,i3)

if nargout == 0
    disp('No output requested.')
    return
elseif nargout == 1 && nargin == 1
        o1 = (4/3) * pi .* i1^3;
        fprintf("The volume of a sphere with radius %d is %.3f\n", i1, o1);
elseif nargout == 2 && nargin == 1
        o1 = (4/3) * pi .* i1^3;
        o2 = 4 * pi * i1^2;
        fprintf("The volume of a sphere with radius %d is %.3f\n", i1, o1);
        fprintf("The surface area of a sphere with radius %d is %.3f\n", i1, o2);
elseif nargout == 1 && nargin == 3
        o1 = i1 + i2 + i3;       
        fprintf("The perimeter of a triangle with sides %d, %d, %d is %d.\n", i1, i2, i3, o1);
else
    o1 = '';
    o2 = '';
    disp('Error. Something went wrong.')
end
end