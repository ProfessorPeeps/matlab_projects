% *******************************************************
% Program Name: Tables.m
% Author: Juan Silva Last Modified: April 25, 2018
% Description: This function will produce a table using 
% SSE values passed from the BestCurve function.
% *******************************************************

function Tables(SSE_poly, SSE_exp, SSE_pow, AX_poly, AX_exp, AX_pow, p_num, t_num, cf)

fprintf('\n\t\t\t|-----------------------------------------------|\n')
fprintf('\t\t\t|  Poly. Curve  |   Exp. Curve  |  Power Curve  |\n')
fprintf('\t|-------|---------------|---------------|---------------|\n')

%Print Row 1 containing SSE values calculated using Method 1 
fprintf('\t|yNew\t|\t%5.3f\t\t|\t%5.3f\t\t|\t%5.3f\t\t|\n', SSE_poly, SSE_exp, SSE_pow)     
fprintf('\t|-------|---------------|---------------|---------------|\n')

%Print Row 2 containing SSE values calculated using Method 2
fprintf('\t|Ax - b\t|\t%5.3f\t\t|\t%5.3f\t\t|\t%5.3f\t\t|\n',AX_poly,AX_exp,AX_pow)
fprintf('\t|-------|---------------|---------------|---------------|\n')

%Print Row 3 containing SSE values calculated using cftool
fprintf('\t|cftool\t|\t%5.3f\t\t|\t%5.3f\t\t|\t%5.3f\t\t|\n', cf)
fprintf('\t|-------------------------------------------------------|\n')

%Print data types.
fprintf('\t\t\t\t\t\tTable %d, Data Pair %d\n', t_num, p_num)
end