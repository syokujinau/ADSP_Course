f1 = 1000;
f2 = 15000;
Amp = 1;
T = 20;
 
ts = 1/100;

t = 0:ts:T;
y = Amp*sin(2*pi*f1*t) + Amp*sin(2*pi*f2*t);

csvwrite('_1khz_15khz_signal.txt', y);

plot(t, y)
pause
