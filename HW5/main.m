
image = double(imread('NTU.jpg'));          % Load Image File

tic                                         % Timer Start
[x1L, x1H1, x1H2, x1H3] = wavedbc10(image);  % Run Function 01
toc                                         % Timer End


figure(1), clf
imshow(x1L/255);

figure(2)
imshow(x1H1);

figure(3)
imshow(x1H2);

figure(4)
imshow(x1H3);

tic                                         % Timer Start
x = iwavedbc10(x1L, x1H1, x1H2, x1H3);       % Run Function 02
toc                                         % Timer End

figure(5)
imshow(x/255);