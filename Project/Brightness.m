function [newImg] = Brightness(gray ,offset,option)
[W H] = size(gray);
newImg = gray;
for a = 1:W
    for b = 1:H 
        if (option == 1)  
        newImg(a,b) = (gray(a,b) + offset) ;
        end 
        if (option == 2)  
        newImg(a,b) = (gray(a,b) * offset) ;
            if (newImg(a,b) > 255)
                newImg(a,b) = 255;
            end
        end 
        if (option == 3) 
        newImg(a,b) = (gray(a,b) - offset) ; 
        end 
        if (option == 4) 
        newImg(a,b) = (gray(a,b) / offset) ; 
            if (newImg(a,b) < 0)
                newImg(a,b) = 0;
            end
                
        end 
    end  
end 
newImg = uint8(newImg); 
end
