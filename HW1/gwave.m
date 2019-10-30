function gwave(a,b,c,T,Fs)

    t = [0 : T*Fs] / Fs;

    samp_freq = (1/3)*a.*(t.^3) - a*b.*(t.^2) + (a*b^2+c).*t;

    y = cos(2 * pi.* samp_freq);

    audiowrite('gwave.wav', y, Fs);

    freq = diff(samp_freq).*Fs;

    sound(y,Fs);

    t(end)=[];

    plot(t,freq);
    xlabel('t (sec)');
    ylabel(' Freq (Hz)');
    title(['spectrum']);
    pause
end


