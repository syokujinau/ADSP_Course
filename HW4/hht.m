function y = hht(x, t, thr)
    n = 1;
    dt = t(2) - t(1);
    while (1)
        if (length(findpeaks(x)) <= 3)
            y(n,:) = x;
            break
        end
        
        tmp = x;
        test = 1;
        k = 1;
        while (test == 1 && k < 3)
            test = 0;
            % Step 2
            [max, max_loc] = findpeaks(tmp);         
            % Step 3
            peaks = spline((max_loc-1)*dt, max, t);    	
            % Step 4
            [neg_min, min_loc] = findpeaks(tmp*(-1));	
            min = (-1)*(neg_min);
            % Step 5
            dips = spline((min_loc-1)*dt, min, t);     	
            % Step 6-1 
            z = (peaks + dips) / 2;      
            % Step 6-2
            h = (tmp - z);								
            
            % Step 7
            hpeaks = findpeaks(h);
            hdips = (-1)*findpeaks(-1*h);
            n_hpeaks = length(hpeaks);
            for i = 1 : (n_hpeaks - 1)
                if ((hpeaks(i) <= 0) || (hdips(i) >= 0) || (abs((hpeaks(i) + hdips(i))/2) >= thr))
                    tmp = h;
                    test = 1;
                    break
                end
            end
            k = k + 1;
        end
        y (n, :) = h;
        % Step 8
        x = x - h;
        n = n + 1;
    end

end