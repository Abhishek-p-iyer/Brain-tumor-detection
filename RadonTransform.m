clc 
clear all 
close all 
img = imread('m2.jpg');
img = rgb2gray(img);
img1 = imresize(img,[512,512]);
figure('Name','Original Image');
imshow(img);
title('Original Image');
figure('Name','Radon transform at 90 degrees');
plot(radon(img1,90));
title('Radon Transform at 90 degrees');
figure('Name','radon transform at 0 degrees');
plot(radon(img1,0));
title('Radon transform at 0 degrees');
