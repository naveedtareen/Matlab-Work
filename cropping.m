img = imread('6.jpg');

img2 = imcrop(img,[1580, 495, 3303-1580,2595-495]);

subplot(1,2,1), imshow(img);
subplot(1,2,2), imshow(img2);