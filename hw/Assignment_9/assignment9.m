%assigment 9

clear, clc,
format short, format compact

FILE = 'DATA_NewCurveFit.xlsx';

%Exp1 = xlsread(FILE, 1, 'A:B');
Exp1 = xlsread(FILE, 1, 'C:D');
%Grab orignal data from excel sheet
x = Exp1(1:5,1);
y = Exp1(1:5,2);


%---------------------------
%Part 1 - Polynomial Mthod
%---------------------------

%Set up ranges for graph
xmin = min(x);
xmax = max(x);
xdense = xmin: 0.1: xmax;

%Get poly?
abc = polyfit(x,y,2)';  %solution thingy
ynew = polyval(abc, x);

%Polynomial curve (ax^2 + bx + c)
a = abc(1);
b = abc(2);
c = abc(3);

ydense1  = a.*xdense.^ 2 + b * xdense + c;

SSE1 = sum((ynew - y).^2)

%---------------------------
%Part 2 - Exponential curve
%---------------------------

%Modify y from original data to be log(y)
logy = log(y);

MB = polyfit(x,logy,1);
M = MB(1);
B = MB(2);

C = exp(B);
a = M;

ynew = C * exp(a * x);
ydense2 = C * exp(a * xdense);



SSE2 = sum((ynew - y).^2)


%---------------------------
%Part 3 - Power curve curve
%---------------------------

%Modify x from original data to be log(x)
logx = log(x);

%Get poly?
MB = polyfit(logx,logy,1);
M = MB(1);
B = MB(2);

C = exp(B);
a = M;

ynew = C * x.^a;
ydense3 = C * xdense.^a;

SSE3 = sum((ynew - y).^2)

plot(xdense, ydense1, 'g', xdense, ydense2, '--b',xdense, ydense3, ':k', x, y, 'ro')
title('Power Method')
xlabel('x1')
ylabel('y1')