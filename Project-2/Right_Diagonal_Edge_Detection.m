function [New_Image] = Right_Diagonal_Edge_Detection(I)

Mask = [-2 -1 0 ; -1 0 1 ; 0 1 2 ];
New_Image = filter2(Mask,I);
imshow(New_Image/255);

end


