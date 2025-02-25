
function props = regionprops(binaryImage)
    if typeof(binaryImage) ~= "boolean" then
        error("Input must be a binary image.");
    end
    [labeledImage, numComponents] = bwlabel(binaryImage);
    props = [];
    for i = 1:numComponents
        region = (labeledImage == i);
        area = sum(region);
        [rows, cols] = find(region);
        centroid = [mean(rows), mean(cols)];
        minRow = min(rows);
        maxRow = max(rows);
        minCol = min(cols);
        maxCol = max(cols);
        boundingBox = [minRow, minCol, maxRow - minRow + 1, maxCol - minCol + 1];
        props($ + 1).Area = area;
        props($).Centroid = centroid;
        props($).BoundingBox = boundingBox;
    end
endfunction
