clear, clc, close all
format short, format long

princ = input('Enter principle: ');
princ_inc = input('Enter annual principle: ');
princ_des = input('Enter projection accumulated: ');
perc = input('Enter interest percent: ');

n_yrs = finance(princ,princ_inc,princ_des,perc);

fprintf('It will take %d years to accumulate $%d \n', n_yrs, princ_des);

