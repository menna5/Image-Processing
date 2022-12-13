function [newImg] = BLP(img, d0, n)
[H, W] = size(img);
mask = zeros(H, W);
for h=1:H
    for w=1:W
        d = sqrt((W/2-w)^2+(H/2-h)^2);
        mask(h, w) = 1/(1+(d/d0)^(2*n));
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

