% Function solves geometric series
function s = GeoSolver(array)

a = array(1);
r = array(2);
n = array(3);

s = (a - a*r^n) / (1-r);

end
