clear; clc; close all;

img = imread('img.jpg'); % your image
imgGray = rgb2gray(img);

imgGrayComp = 255-imgGray; % complement data to white color

imgEros = imerode(imgGrayComp, true(25));
imgErosAvg = avgfilt2(imgEros,100);

imgComp_shadowRemoval = imgGrayComp - imgErosAvg;

img_shadowRemoval = 255 - imgComp_shadowRemoval;

figure('Name','Original Image');imshow(imgGray);
figure('Name','Shadow Removal Image');imshow(img_shadowRemoval);
