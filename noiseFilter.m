I = imread('1.jpg');
N = imnoise(I,'salt & pepper', 0.3);
imshow(N);