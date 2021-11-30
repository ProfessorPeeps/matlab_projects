function [o1, o2] = compute(i1,i2,i3)

c = 25;

switch nargin
    case 1
        switch nargout 
            case 2
                r1 = i1(:,1);
                o1 = min(r1);
                r2 = i1(:,2);
                o2 = max(r2);
            otherwise
        end        
    case 2           
        o1 = i1 + i2 + c;
    otherwise
        o1 = "Sorry, Can't Do"; 
end
end   