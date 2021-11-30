
%Ill-conditioned matrices
A = [1 1; 1 1.0001];
b = [2 2];
Ab = [A b'];
rref(Ab)

A = [1 1; 1 1.0001];
b = [2 2.0001];
Ab2 = [A b'];
rref(Ab2)

%Well-conditioned matrices
A = [0.0001 1; 1 1];
b = [2 2];
Ab = [A b'];
rref(Ab)

A = [0.0001 1; 1 1];
b = [2 2.0001];
Ab2 = [A b'];
rref(Ab2)

%More examples
A = [1 1; 0.0001 1];
b = [2 1];
Ab = [A b'];
rref(Ab)

%Check for zero in row 1 pivot
eps
flag = abs(Ab(1,1))


a = [-2.7 -2.3 -1.8 -1.5 -0.4 0.3 0.7 1.1 1.7 2.2 2.8]

%standard round (by whole decimal)
round(a)
%round up from negative, round down from positive
floor(a)
%round up from positive, round down from negative
ceil(a)
%sign shows sign type
sign(a)
%rounds up/down closest to zero
fix(a)