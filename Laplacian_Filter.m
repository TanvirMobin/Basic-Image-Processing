clc 
clear all 
close all 
image=imread('LaplacianImg.tif');
filter=[1 1 1 ; 1 -8 1 ; 1 1 1];
rows = size(image,1);
cols = size(image,2);
outputimage = zeros(rows,cols);

for row = 2:rows-1
    for col = 2:cols-1
        for i=1:3
        outputimage (row,col)= sum (sum(double(image(row-1: row+1, col-1: col+1)) .* filter )); 
        end
    end
end 
%image =uint8(image);
figure,imshow (outputimage)
image1=imsubtract(image,uint8(outputimage));
figure,imshow(image)
figure,imshow(image1)