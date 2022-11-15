function [NI] = H_edge_detection(I)

Mask = [-1 -2 -1;0 0 0;1 2 1];
NI = filter2(Mask,I);
imshow(I);
figure,imshow(NI/255);

end