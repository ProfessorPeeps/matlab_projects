function n_yrs = finance(princ,princ_inc,princ_des,perc)

tax = perc / 100;     %percent conversion
n_yrs = 0;              %years

while princ < princ_des
    n_yrs = n_yrs + 1;
    princ = princ + (princ * tax) + princ_inc;    
end

end