format short, format compact
clear, clc

%Use a nested if statement.
%Use a nested switch statement.

F = input('Enter values for a and b (a+jb): ', 's');
F = str2num(F);

if isempty(F) == true
    return
end

%Parse array for arthmetic    
a = F(1);
b = F(2);

if a > 0
    ang = atand(b / a)
elseif a < 0
    if b > 0
        ang = 180 - abs(atand(b / a))
    elseif b < 0
        ang = 180 + abs(atand(b / a))
    end
else
    disp('ERROR')    

end


% switch a
% case 1 
%     ang = atand(b / a)
% case 2
%     switch b
%         case 1
%             ang = 180 - abs(atand(b / a))
%         otherwise
%             ang = 180 + abs(atand(b / a))
%     end    
% otherwise
%     disp('ERROR')    
% end