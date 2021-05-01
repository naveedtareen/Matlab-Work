img = imread('1.jpg');
img = im2double(img);
img2 = imread('16.jpg');
img2=im2double(img2);
img2=imresize(img2,[11 11]);

ident =  [0 0 0;0 1 0;0 0 0]; %identity filter
ed = [-1 -1 -1; -1 8 -1;-1 -1 -1]; %edge detection
shar = [0 -1 0; -1 5 -1;0 -1 0]; % sharpening the edeges 
blur = [1/9 1/9 1/9; 1/9 1/9 1/9;1/9 1/9 1/9]; % blurring 
P = [-1 -sqrt(2) -1; 0 0 0;1 sqrt(2) 1]; % some nice filter
meanfilter=[1 1 1; 1 1 1; 1 1 1];
newimg=imfilter(img,ed);
newimg1=imfilter(img,img2);
newimg2=imfilter(img,shar);
newimg3=imfilter(img,blur);
newimg4=imfilter(img,meanfilter);
subplot(2,3,1),imshow(img)
subplot(2,3,2),imshow(newimg)
subplot(2,3,3),imshow(newimg1)
subplot(2,3,4),imshow(newimg2)
subplot(2,3,5),imshow(newimg3)
subplot(2,3,6),imshow(newimg4);