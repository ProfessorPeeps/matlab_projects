function mag = BigEnuf(x)

mag = abs(x);

if any(abs(x) < 3)
    disp('Sorry this number (or some of these numbers) are too small.') 
else
    disp(mag);

end
