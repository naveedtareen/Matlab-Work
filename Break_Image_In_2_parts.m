im=imread('khan.jpg');
n=fix(size(im,1)/2);
A=im(1:n,:,:);
B=im(n+1:end,:,:);
imshow(A);
figure;
imshow(B);