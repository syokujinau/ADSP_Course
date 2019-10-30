fs=10000;
t=[0:3*fs]/fs;
x=0.5*cos(2*pi*(500*t+300*(t-1.5).^3));
audiowrite('demo2.wav',x,fs);


plot(t, x)
pause