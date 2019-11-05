function y = recSTFT(x,t,f,B)
    dt = t(2) - t(1);          % time sampling interval
    df = f(2) - f(1);          % freq sampling interval
    N = round(1 / (dt * df));      % N-points FFT
    T = length(t);
    F = length(f);
    Q = B/dt;
    m = round(f / df);
    m1 = mod(m, N)+1;
    y = zeros(T, F);

    for n = 1:T
        x1 = zeros(1, N);
        for q = 1 : 2*Q+1
            if((n - Q + q) < 1 || (n - Q + q) > T)
                x1(q) = 0;
            else
                x1(q) = x(n-Q+q);
            end
        end
        X1 = fft(x1);
        y(n, :) = X1(m1).*exp(i*2*pi*(Q-n+1)*m/N) * dt;
    end
    y = y';
end
