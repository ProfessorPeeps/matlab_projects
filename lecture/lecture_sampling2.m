clear, clc, close all
format short, format compact

%historgram
unidrnd(6,100,1)   %100 random unsigned numbers from 0 - 10 in one column
                   %discrete uniform distribution
hist(ans, 10)
title('Histogram from RNG')
centers = [1:.5:6];
freq = hist(ans, centers);

%relative Freq
bar(centers, freq, 1)
rel_freq = freq / sum(freq);
figure
title('Relative Frequency')

%Density
bar(centers, rel_freq, 1)
dens = rel_freq / .5;
figure
title('Density Histogram')

bar(centers, dens, 1)
title('Histogram from RNG')
