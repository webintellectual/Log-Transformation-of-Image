% Program for Log Transformation
clc
clear
close all

% Getting images for log transformation

A = imread('img.jpg');

imshow(A), title('Original image')

Max_Intensity = 255;

C=Max_Intensity/log10(1+Max_Intensity);
D=C*log10(1+double(A));

figure, imshow(uint8(D)), title('Log Transformed Image')