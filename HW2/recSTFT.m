function y = recSTFT(x,t,f,B) % ref: sildes page.99 FFT-Baed Method

    dt = t(2) - t(1);         % delta t
    df = f(2) - f(1);         % delta f (sample interval)
    N  = round(1 / (dt * df));     
    T  = length(t);
    F  = length(f);
    Q  = B/dt;
    m  = round(f / df);
    m1 = mod(m, N) + 1;
    y  = zeros(T, F);

    for n = 1 : T
        x1 = zeros(1, N);
        for q = 1 : 2*Q+1
            p = (n - Q + q);
            if(p < 1 || p > T)
                x1(q) = 0;
            else
                x1(q) = x(p);
            end
        end
        X1 = fft(x1); % zero padding N-point DFT
        y(n, :) = X1(m1).*exp(1i * 2 * pi * (Q-n+1) * m / N) * dt;
    end
    y = y';
end
