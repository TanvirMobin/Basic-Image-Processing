# Basic-Image-Processing
Implementation of Histogram Equalization, Box Filter(Average Filter) and Laplacian Sharpening Filter

---------------------------------------------------------------------------------------------------------------------------------------
Histogram Equalization
---------------------------------------------------------------------------------------------------------------------------------------

This method usually increases the global contrast of many images, especially when the usable data of the image is represented by close contrast values.
Through this adjustment, the intensities can be better distributed on the histogram.
This allows for areas of lower local contrast to gain a higher contrast. 
Histogram equalization accomplishes this by effectively spreading out the most frequent intensity values.
The method is useful in images with backgrounds and foregrounds that are both bright or both dark.
In particular, the method can lead to better views of bone structure in x-ray images, and to better detail in photographs that are over or under-exposed. 
First We have to calculate the frequencies of intensity at specific pixels.
By dividing each frequency with total value of intensity from all the pixels, we get the pdf function.
By adding the pdfs in a cummulative manner, we get the cdf function. 
To normalize the cdf, we multiply each cdf with L-1 where L is the range of the grayscale image which is 256.
The intensities of the original image are then mapped to the new intensity value from the normalized cdf and output in a new image.


-------------------------------------------------------------------------------------------------------------------------------------------

