%% Lecture - 2/26/18
%% Built-in functions fprintf()

Fahr = 0:15:90;         %messes up print statement 
Cels = Fahr2Cels(Fahr);

%fprintf('%5.d°F is : %12.2f°C. \n', Fahr, Cels)

for x = 1:length(Fahr)
    fprintf('%5.1d°F is : %12.2f°C. \n', Fahr(x), Cels(x))
end

