function y=Gabor(x, tau, t, f, sgm)
 
dtau = tau(2) - tau(1);
dt = t(2) - t(1);
df = f(2) - f(1);
 
S = round(dt/dtau);
N = round(1/dtau/df);
B = 1.9143;
Q = floor(B/dtau/sqrt(sgm));
 
n  = round(t/dtau/S);                  
n1 = n - round(min(tau)/dtau/S) + 1;

m  = round(f/df)';    
m0 = mod(m, N) + 1;

x1 = [zeros(Q, 1); x.'; zeros(Q, 1)];
gs = exp(-sgm * pi * dtau^2 * [Q: -1: -Q]'.^2) * dtau;

y  = zeros(length(m), length(n));


m1 = 1j * 2 * (pi/N) * m;
Q2 = 2*Q;
sgm1 = sgm^(0.25);
for a = 1:length(n)
    x1a = fft(x1(S*n1(a):Q2+S*n1(a)).*gs, N);
    y(1:length(m), a) = sgm1 * x1a(m0).*exp(m1*(Q-S*n(a)));
end