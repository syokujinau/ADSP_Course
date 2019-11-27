function y = Gabor( x, tau, t, f, sgm )

    dt = t(2) - t(1);
    df = f(2) - f(1);
    dtau = tau(2) - tau(1);
    
    N = 1/(df * dtau);
    B = 1.9143/(sgm^(1/2));	% if |a| > 1.9143, the Gaussian Function can be ignored.
    Q = round(B / dtau);
    % n0 = tau(1) / dtau;
    
    m0 = f(1) / df;
    c0 = t(1) / dt;
    S = dt / dtau;
    
    y = zeros(length(t), length(f));
    x1 = zeros(1,N);
    window = (sgm^(1/4)).* exp(-sgm.*pi.*((Q-(0:N-1))*dtau).^2);
    
    for n = c0:(c0 + length(t) - 1)
        win_const = dtau*exp( (1j*2*pi*(Q-n*S)).*(m0:(m0 + length(f) -1))./N);
        ns_q = n*S-Q;								% Define variable ns_q = (n*S)-Q
        for q = 0:N-1
            if (q <= (2*Q) && (ns_q+q>=0) && ((ns_q+q+1) <= length(tau)))
                x1(q+1) = x(ns_q+q+1);
            else
                x1(q+1) = 0;
            end
        end
        fft_out = fft((window.*x1),N);
        y(n+1-c0,:) = ( win_const .* fft_out(m0+1:m0 + length(f)))';
    end
    y=y';
end