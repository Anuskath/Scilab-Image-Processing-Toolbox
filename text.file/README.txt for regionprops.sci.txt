README.txt for regionprops.sci
Function Name: regionprops


Description:
The `regionprops` function computes region properties for connected components in a binary image. 
It returns details such as area, centroid, and bounding box for each connected region.


Syntax:
    properties = regionprops(binaryImage, propertyName)


Parameters:
- binaryImage: A matrix representing the binary image. 
  Pixels with value `1` represent the foreground, and pixels with value `0` represent the background.
- propertyName: A string specifying the desired property. 
  Options include:
    - 'Area': Total number of pixels in the region.
    - 'Centroid': The center of mass of the region.
    - 'BoundingBox': The smallest rectangle containing the region.


Return Value:
- properties: A structure or matrix containing the requested property values for each region.


Test Cases:
1. Input:
    binaryImage = [1 0 0; 1 1 0; 0 1 1];
    propertyName = 'Area';
   Output:
    properties = [5]


2. Input:
    binaryImage = [1 0 0; 1 1 0; 0 1 1];
    propertyName = 'Centroid';
   Output:
    properties = [2.2, 1.4]


3. Input:
    binaryImage = [1 0 0; 1 1 0; 0 1 1];
    propertyName = 'BoundingBox';
   Output:
    properties = [1, 1, 3, 2] 
   (Bounding box: starting at row 1, col 1, with width 3 and height 2)


4. Input:
    binaryImage = [0 0 0; 0 0 0; 0 0 0];
    propertyName = 'Area';
   Output:
    properties = [0]


5. Input:
    binaryImage = [1 1 1; 1 0 1; 1 1 1];
    propertyName = 'BoundingBox';
   Output:
    properties = [1, 1, 3, 3] 
   (Bounding box: starting at row 1, col 1, with width 3 and height 3)


Expected Output:
The function outputs the requested property values for each connected region in the input binary image.


Dependencies:
None.


Limitations:
- The input image must be binary.
- Multiple properties must be computed through multiple calls.