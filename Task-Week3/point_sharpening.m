function sharped = point_sharpening(img)
mask = [-1 -1 -1; -1 8 -1; -1 -1 -1]/255;
sharped = filter2(mask, img);
imshow(sharped);
end
