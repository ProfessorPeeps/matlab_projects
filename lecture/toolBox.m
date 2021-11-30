%Toolbox

clear, clc
format short, format compact

syms t
y = exp(-t/2);
%fplot(y)

syms a b c x y 
r = cos(x)^2 + sin(x)^2
simplify(sin(x)^2+ cos(x)^2)

w = (a+b)^2
expand(w)

factor(x^2-9)
factor(x^3 + x^2 - 8*x - 12)

%laplace(1)   %doesnt work
laplace(t^2)
ilaplace(1/t)
syms x s
ilaplace(1/(s+2),x)

%Solve for exp(5,x) = 2*y

eq1 = 'exp(5*x) = 2*y';
x = solve(eq1, x)
y = solve(eq1, y)

%Solve system of equations
clear, clc

syms x y 
eq1 = 'x^2+y = 10';
eq2 = 'x - y = 2';

[x,y] = solve(eq1, eq2, x, y)

%Take integration / differentiate

syms f t
f = t^4;
w = diff(f)

clear, clc
syms x y z

f = 3*x^3+2*y+z
w = diff(f,x,x,x)

clear, clc
syms x y z

f = 3*x^2
w = int(f)

%???

clear, clc
syms x y z
piecewise(y == -1, log(x), y == -1)

%
clear, clc
syms t x y

w = int(exp(-5*t), [0, +inf])

%formats the solution

pretty(w)
eq1 =x^2+y == 10;

w = solve(eq1, x)

%Easy graph
clear, clc

syms x y
f = 'x^2/4 + y^2/8 = 1';

ezplot(f, [-2,2], [-5,5])
grid, title('ellipse')
xlabel('x')

%graph in 3-D

clear, clc

syms t
ezplot3('cos(t)', 'sin(t)', t, [-12,12])