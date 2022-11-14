function [New_Image] = left_Diagonal_Edge_Detection(I)

Mask = [0 -1 -2 ; 1 0 -1 ; 2 1 0];
New_Image = filter2(Mask,I);
imshow(New_Image/255);

end

