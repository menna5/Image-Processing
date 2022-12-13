function [newImg] = SaltAndPepper(img, ps, pp)
[W, H] = size(img);
newImg = img;
numS = ps * (H * W);
numP = pp * (H * W);
for i=1:93
    x = round(rand(1, 1)*H);
    y = round(rand(1, 1)*W);
    newImg(x, y) = 0;
end
for i=1:91
    x = round(rand(1, 1)*H);
    y = round(rand(1, 1)*W);
    newImg(x, y) = 255;
end
end

