function [newImg] = ILP(img, d0)
[H, W] = size(img);
mask = zeros(H, W);

for h=1:H
    for w=1:W
        d = sqrt((W/2-w)^2+(H/2-h)^2);
        if d <= d0
            mask(h,w) = 1;
        else
            mask(h,w) = 0;
        end
            
    end
end
IMG_F = fft2(img);
IMG_shifted = fftshift(IMG_F);
R = real(IMG_shifted).*mask;
Im = imag(IMG_shifted).*mask;
FIMG = R + i * Im;

inversed = ifft2(FIMG);
newImg = uint8(inversed);
end
