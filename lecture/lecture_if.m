a = 10;
b = -5;

if a > b
    disp('a > b');
elseif a < b
    disp('a < b');
else
    disp('a = b');
end

x = input('Enter a number: ');

if x > 0
  disp('You entered a positive number.')
elseif x < 0
  disp('You entered a negative number.')
elseif x == 0
  disp('You entered zero.')
else
  disp('Error.')
end