function plotGraph(y,f,t)
    image(t,f,abs(y)/max(max(abs(y)))*400)			% Here 400 is a constant can be changed.
    colormap(gray(256))								% Take color in gray.
    set(gca,'Ydir','normal')						% Make the y-axis upsidedown.
    set(gca,'Fontsize',12)							% Change the font size.
    xlabel('Time (Sec)','Fontsize',12)				% Define x-axis.
    ylabel('Frequency (Hz)','Fontsize',12)			% Define y-axis.
    title('Gabor Transform','Fontsize',12)			% Define the graph title.
end