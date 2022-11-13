function [edges] = sharpening_digonal(img,option)
mask_left_diagonal = [0 0 1; 0 1 0; -1 0 0]/255;
mask_right_diagonal=[1 0 0;0 1 0;0 0 -1]/255;
if option==1
    
  edges = filter2(mask_left_diagonal, img);

else
  edges = filter2(mask_right_diagonal, img);
end


imshow(edges);
end

