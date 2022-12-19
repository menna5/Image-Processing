function [NI] = v_edge_detection(I)

Mask = [-1 0 1;-2 0 2;-1 0 1];
NI = filter2(Mask,I);
imshow(I);
figure,imshow(NI/255);

end

