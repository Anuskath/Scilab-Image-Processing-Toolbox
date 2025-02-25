README.txt for graythresh.sci
Function Name: graythresh


Description:
The `graythresh` function calculates the global threshold value for a grayscale image using Otsu's method. 
This threshold can be used to convert a grayscale image into a binary image.


Syntax:
    threshold = graythresh(grayscaleImage)


Parameters:
- grayscaleImage: A matrix representing the grayscale image. 
  Pixel values range from 0 (black) to 255 (white).


Return Value:
- threshold: A scalar value representing the computed global threshold.


Test Cases:
1. Input:
    grayscaleImage = [100 150 200; 50 75 125; 25 100 175];
   Output:
    threshold = 100


2. Input:
    grayscaleImage = [0 0 0; 0 0 0; 0 0 0];
   Output:
    threshold = 0


3. Input:
    grayscaleImage = [255 255 255; 255 255 255; 255 255 255];
   Output:
    threshold = 255


4. Input:
    grayscaleImage = [100 120 140; 110 130 150; 105 125 145];
   Output:
    threshold = 125


5. Input:
    grayscaleImage = [0 255 0; 255 0 255; 0 255 0];
   Output:
    threshold = 128 (approx.)


Expected Output:
The function outputs the optimal threshold value based on Otsu's method.


Dependencies:
None.


Limitations:
- The input image must be grayscale.
- It does not work with binary or RGB images.