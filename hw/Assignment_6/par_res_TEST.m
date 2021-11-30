clear, clc
format short, format compact

r1 = input('Enter value for R1: ');
r2 = input('Enter value for R2: ');

req = par_res(r1,r2);

fprintf('%d || %d = %d?\n', r1, r2, req)
