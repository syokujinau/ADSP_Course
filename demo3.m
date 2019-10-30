fs=10000;
f1=[220,330,262];
f2=f1*2;
f3=f1*4;
t=[0:fs/2-1]/fs; % time for each note: 0.5 sec
x1=[cos(2*pi*f1(1)*t),cos(2*pi*f1(2)*t),cos(2*pi*f1(3)*t)];
x2=[cos(2*pi*f2(1)*t),cos(2*pi*f2(2)*t),cos(2*pi*f2(3)*t)];
x3=[cos(2*pi*f3(1)*t),cos(2*pi*f3(2)*t),cos(2*pi*f3(3)*t)];

audiowrite('demo3.wav',[x1,x2,x3],fs)

