function [ni] = untitled(c)
[w h l]=size(c);
ni=zeros(w,h);
for i=1 : w
    for j=1 : h
        ni(i,j)=c(i,j,1)*.2+c(i,j,2)*.3+c(i,j,3)*.5;
    end
end
ni=uint8(ni);           
end


