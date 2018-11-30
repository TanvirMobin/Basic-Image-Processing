img = imread('HistogramImg.jpg');
row = size(img,1);
col = size(img,2);
numberOfPixel = row*col;

figure, imshow(img);
title('Original Image');
% figure,imhist(rgb2gray(img));
% title('Original Histogram');


img2Histogram = uint8(zeros(row,col));
frequency = zeros(256,1);
%probabilityFunction = zeros(256,1);
probabilityCumulative = zeros(256,1);
cumulative = zeros(256,1);
output = zeros(256,1);


for i = 1:row
    for j = 1:col
        value = img(i,j);
        frequency(value+1) = frequency(value+1)+1;
        %probabilityFunction(value+1) = frequency(value+1)/numberOfPixel;
    end
end


sum = 0;
for i = 1:size(frequency);
    sum = sum+frequency(i);
    cumulative(i) = sum;
    probabilityCumulative(i) = cumulative(i)/numberOfPixel;
    output(i) = round(probabilityCumulative(i)*255);
end

for i = 1:row
    for j = 1:col
        img2Histogram(i,j) = output(img(i,j)+1);
    end
end
he = histeq(img);
figure,imshow(img2Histogram);
title('Edited Image');
% figure,imhist(img2Histogram);
% title('Edited Histogram');
figure,imshow(he);
title('BuiltIn Function');