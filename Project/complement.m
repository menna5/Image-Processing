function [newImg] = complement(I)
gray = rgb_to_gray(I);
[W, H] = size(gray);
for i=1:W
    for j=1:H
        newImg(i,j)=255-gray(i,j)+1;
    end
end
imshow(newImg);
end
