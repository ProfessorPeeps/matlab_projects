%% lecture - 2/12/18
%%  Plotting

t = linspace(0.01,0.05, 10);         %% In Hertz, 5 cycles (5 * .01)
i = 0.38*sin(2*pi*100*t);            %% switch to 100 (not 10) for more accurate sin wave
ecePlot(t,i);                  %%attribute determines characteristic
 


