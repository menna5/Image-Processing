
function [edges] = point_edge_detect(img)
mask = [-1 -1 -1; -1 8 -1; -1 -1 -1]/255;
edges = filter2(mask, img);
imshow(edges);
end

