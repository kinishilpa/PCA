
% Reading the image
RGB = im2double(imread('IMG.jpg')); 

% Convert 3-dimensional array array to 2D, where each row is a pixel (RGB)
X = reshape(RGB, [], 3);

% Size of matrix X
[m, n] = size(X);

% Running the pca algorithm over X
Y = pca(X)

% Finding the eigen vectors
e1 = Y(:,3);
e2 = Y(:,2);
e3 = Y(:,1);

% Plotting the eigen values
plot(e1,e2)
plot(e1,e2,e3)
plot(e2,e3)
plot(e1,e3)