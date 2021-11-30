%Lecture 4/23/18
clear, clc,
format short, format compact

%Strings
H = 'H';
E = 'e';
L = 'l';
O = 'o';

str1 = [H, E, L, L, O];
str2 = 'World';

str3 =  strcat(str1, str2);

str4 = [str1, str2];

str5 = strcat(str1, " " , str2);

str2num(['45', '3', '2']);


%Cells
cell = {str5, 'str', 100, [1,2;3,4;5,6], 3-4j};     %store into cell
celldisp(cell)  %display all
celldisp(cell(3))     %display cell at index 3


cell{4}(:,1) = []
cell{4}(2)
celldisp(cell(4))
cell{3} = ([1,3,5;2,4,6])