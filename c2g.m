function [ni] = untitled(c)
[w h l]=size(c);
ni=zeros(w,h);
for i=1 : w
    for j=1 : h
        ni(i,j)=c(i,j,1);
    end
end
ni=uint8(ni);           
end


