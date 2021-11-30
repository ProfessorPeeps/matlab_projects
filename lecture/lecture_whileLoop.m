clear, clc
format short, format compact
% 
% tic
% for n=1:10000 
%     n = n.^2;
% end
% disp('elapsed for: ');
% toc
% 
% tic
% x = 1:10000;
% x = 2*n;
% disp('elapsed Array')
% toc


%% To exit infinite loop, press Ctrl + C
while true

x = input('Enter a value: ');
    
    
    if x > 0
        disp('signum(x) = +1');
    elseif x < 0
        disp('signum(x) = -1');
    else
        disp('signum(x) = 0');
    end 
        if isempty(x) == true
            disp('No input entered.')
        break
        end
end