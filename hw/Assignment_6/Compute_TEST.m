clear, clc
format short, format compact

%no outputs
Compute(1,2,3);
%one output, one input
x = Compute(5);
%two outputs, one input
[x,y] = Compute(3);
%one output, three inputs
x = Compute(1,2,3);

%two inputs, two outputs
[x,y] = Compute(3,4);
%one output, two inputs
[x] = Compute(3,4);