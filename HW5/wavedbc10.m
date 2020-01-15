 function [x1L, x1H1, x1H2, x1H3] = wavedbc10(x)  % Define Function 01
        % 8-point
        % gn=[-0.0106 0.0329 0.0308 -0.1870 -0.0280 0.6309 0.7148 0.2304];
        % hn=[0.2304 -0.7148 0.6309 0.0280 -0.1870 -0.0308 0.0329 0.0106];
        
        % LoD
        gn = [ 0.0033 -0.0126 -0.0062 0.0776 -0.0322 -0.2423  0.1384  0.7243 0.6038 0.1601]; 
        % HiD
        hn = [-0.1601  0.6038 -0.7243 0.1384  0.2423 -0.0322 -0.0776 -0.0062 0.0126 0.0033]; 
        
        L = length(gn);
        m = size(x, 1);
        n = size(x, 2);
        d = size(x, 3);
        l = zeros(m, n + L - 1, d);
        h = zeros(m, n + L - 1, d);
        for i = 1:m
            for j = 1:d
                l(i,:,j) = conv(x(i,:,j), gn);
                h(i,:,j) = conv(x(i,:,j), hn);
            end
        end
        index = 1:2:size(l, 2);
        V1L = l(:,index,:);
        V1H = h(:,index,:);
        m = size(V1L, 1);
        n = size(V1L, 2);
        L1 = zeros(m+L-1, n, d);
        L2 = zeros(m+L-1, n, d);
        H1 = zeros(m+L-1, n, d);
        H2 = zeros(m+L-1, n, d);
        for i = 1:n
            for j = 1:d
                L1(:,i,j) = conv(V1L(:,i,j), gn);
                L2(:,i,j) = conv(V1L(:,i,j), hn);
                H1(:,i,j) = conv(V1H(:,i,j), gn);
                H2(:,i,j) = conv(V1H(:,i,j), hn);
            end
        end
        index = 1:2:size(L1,1);
        x1L = L1(index,:,:);
        x1H1 = L2(index,:,:);
        x1H2 = H1(index,:,:);
        x1H3 = H2(index,:,:);
end