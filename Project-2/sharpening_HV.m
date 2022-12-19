function [NI] = sharpening_HV(img,option)
mask_horizontal = [0 1 0; 0 1 0; 0 -1 0]/255;
mask_vertical=[0 0 0;1 1 -1;0 0 0]/255;
if option==1   
  NI = filter2(mask_horizontal, img);
else
  NI = filter2(mask_vertical, img);
end
end

