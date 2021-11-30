clear, clc
format short, format compact

R = 10e3;
C = 10e-6;
Freq = 1;
InputMag = 1;
Wc = 1 / (R*C);
Fc = Wc / (2*pi);

fprintf('\n\n\nWc(Rads/sec)\t\tFc(Hz)\n')
fprintf(' %5.2f%17.2f\n\n\n',Wc,Fc)

%run('RCcircuit');
FromSimulink =  sim('RCcircuit', 'StopTime', '10');  %Starts simulation
FromSimulink.who;
FromSimulink.SimOutputs;

Time =                  FromSimulink.tout;
Input =                 FromSimulink.SimOutputs(:,1)
Noise =                 FromSimulink.SimOutputs(:,2)
InputPlusNoise =        FromSimulink.SimOutputs(:,3)
Output =                FromSimulink.SimOutputs(:,4)

subplot(4,1,1)
plot(Time, Input)
title('RC Filter Evaluation')

subplot(4,1,2)
plot(Time, Noise)
title('Noise')

subplot(4,1,3)
plot(Time, InputPlusNoise)
title('InputPlusNoise')

subplot(4,1,4)
plot(Time, Output)
title('Output')
