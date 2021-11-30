% *******************************************************
% Program Name: test.m
% Author: Juan Silva Last Modified: April 25, 2018
% Description: This program will ask the user to enter
% an experiment number and output a graph showing the 
% best fit curve for that experiment. 
% *******************************************************

clear, clc, close all,
format short, format compact

%Prompt user to enter experiment type.
in = input('Enter an experiment number: ');
[bestCurve, bestFit]  = BestCurve(in);

%Print best curve type from values found in BestCurve function.
fprintf('\t\tThe Best Fit is: %s Curve with SSE of %5.3f.\n', bestCurve, bestFit)