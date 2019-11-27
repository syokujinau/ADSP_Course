[a1, fs] = audioread('Chord.wav');	

x = a1(:,1);
tau = 0:1/fs:1.6077;
dt = 0.01;
df = 1;
t = 0:dt:max(tau);
f = 20:df:1000;
sgm = 200;
tic												
y = Gabor(x, tau, t, f, sgm);				
toc							
plotGraph(y,f,t)

