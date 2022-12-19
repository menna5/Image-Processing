function [out_img] = inverse_log(img, c)
[H, W] = size(img);
img = im2double(img);
for i=1:H
    for j=1:W
        out_img(i, j) = 10^(img(i, j)/c)-1;
    end
end
imshow(out_img);
end