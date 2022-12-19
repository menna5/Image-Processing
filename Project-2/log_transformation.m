function [out_img] = log_transformation(img, c)
[H W L] = size(img);
img = im2double(img);
for i=1:H
    for j=1:W
        out_img(i, j) = c*log(img(i, j)+1); 
    end
end
imshow(out_img);
end