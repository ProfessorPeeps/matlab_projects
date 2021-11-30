clear, clc, close all
format short, format compact

A = [0 2 1; 2 -1 -1; 3 1 2];
b = [1 6 1];

N = length(A);
[M x] = gaussian_v2(A,b)