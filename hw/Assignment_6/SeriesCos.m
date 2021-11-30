function sum = SeriesCos(x, n)

sum = 0;

if nargin < 2
  n = 3; 
end
    
for k = 0:n
   sum = sum + (-1).^k * (x.^(2*k) / factorial(2*k));     
end

end