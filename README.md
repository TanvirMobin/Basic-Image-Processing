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
Box Filter
-------------------------------------------------------------------------------------------------------------------------------------------
The output (response) of a smoothing, linear spatial filter is simply the average of the pixels contained in the neighborhood of the filter mask. These filters sometimes are called averaging filters. By replacing the value of every pixel in an image by the average of the intensity levels in the neighborhood defined by the filter mask, this process results in an image with reduced “sharp” transitions in intensities. Because random noise typically consists of sharp transitions in intensity levels, the most obvious application of smoothing is noise reduction. However, edges (which almost always are desirable features of an image) also are characterized by sharp intensity transitions so averaging filters have the undesirable side effect that they blur edges. Another application of this type of process includes the smoothing of false contours that result from using an insufficient number of intensity levels. A major use of averaging filters is in the reduction of “irrelevant” detail in an image. By “irrelevant” we mean pixel regions that are small with respect to the size of the filter mask. This is what a 3x3 average filter computes at each pixel.

-------------------------------------------------------------------------------------------------------------------------------------------
Laplacian Filter
----------------------------------------------------------------------------------------------------------------------------------------
Laplacian is a second order derivative operator, its use highlights intensity discontinuities in an image and deemphasizes regions with slowly varying intensity levels. This will tend to produce images that have grayish edge lines and other discontinuities, all superimposed on a dark, featureless background. Background features can be “recovered” while still preserving the sharpening effect of the Laplacian simply by adding the Laplacian image to the original. Laplacian operator gives good result in finding the fine details of the image. It increases the sharpness of the image.
