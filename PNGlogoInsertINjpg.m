[logo, map, alpha] = imread('logo.png');


nk = imread('16.jpg');
nkt = imresize(bk, [1000 1200]); 

logoResize = imresize(logo, 0.6, 'bilinear');
alphaResize = imresize(alpha, 0.6, 'bilinear');
alphaResize = repmat(alphaResize, [1 1 3]);

alphaResize = im2double(alphaResize); 
rows = size(logoResize, 1);
cols = size(logoResize, 2);
%FOR TOP LEFT
nkt(1:rows,1:cols,:) = uint8(alphaResize.*double(logoResize) + ...
(1-alphaResize).*double(nkt(1:rows,1:cols,:)));
                   
figure; 
imshow(nkt);