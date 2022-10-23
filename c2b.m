function [ni] = c2b(c)
grey=c2g(c);
ni=g2b(grey,10);
ni=logical(ni);   
end


