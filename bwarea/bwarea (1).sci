
function area = bwarea(binaryImage)
    if typeof(binaryImage) ~= "boolean" then
        error("Input must be a binary image (boolean matrix).");
    end
    [labeledImage, numComponents] = bwlabel(binaryImage);
    area = 0;
    for i = 1:numComponents
        area = area + sum(labeledImage == i);
    end
endfunction
