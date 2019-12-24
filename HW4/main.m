t = [0: 0.01: 10];
x = 0.2*t + cos(2*pi*t) + 0.4*cos(10*pi*t);
thr = 0.2;
tic													 
y = hht(x, t, thr);
toc													 

figure(1), clf
plot(t,y(1,:));
title('IMF1');

figure(2), clf
plot(t,y(2,:));
title('IMF2');

figure(3), clf
plot(t,y(3,:));
title('Trend');