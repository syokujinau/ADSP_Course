fs=10000;
t=[0:3*fs]/fs;
x=0.5*cos(2*pi*(3200*t-300*t.^2));

audiowrite('demo1.wav',x,fs);

plot(t,x)
pause