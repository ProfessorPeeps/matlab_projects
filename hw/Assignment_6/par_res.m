% Function will add two resistors
% in parallel and give equivalent resistance

function[req] = par_res(r1, r2)

req = (r1 .* r2) ./ (r1 + r2);

end