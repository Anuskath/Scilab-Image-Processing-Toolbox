Function Name: bwarea

Description:
The `bwarea` function computes the total area of connected components in a binary image. 
It sums up the number of `true` (1) pixels in the binary matrix, representing the area of white regions.

Syntax:
    area = bwarea(binaryImage)

Parameters:
- binaryImage: A matrix representing the binary image. 
  Pixels with value `1` represent the foreground, and pixels with value `0` represent the background.

Return Value:
- area: The total area of the connected components (sum of `1` values).

Test Cases:
1. Input:
    binaryImage = [1 0 0; 1 1 0; 0 1 1];
   Output:
    area = 5

2. Input:
    binaryImage = [0 0 0; 0 0 0; 0 0 0];
   Output:
    area = 0

3. Input:
    binaryImage = [1 1 1; 1 1 1; 1 1 1];
   Output:
    area = 9

4. Input:
    binaryImage = [1 0 1; 0 1 0; 1 0 1];
   Output:
    area = 5

5. Input:
    binaryImage = [1];
   Output:
    area = 1

Expected Output:
The function outputs the total area of connected components in the input binary image.

Dependencies:
None.

Limitations:
- The input image must be binary.
- It does not handle grayscale or RGB images.
