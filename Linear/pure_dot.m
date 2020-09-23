function [alpha] = pure_dot(x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[rx,cx] = size(x);
[ry,cy] = size(y);
alpha = 0;
if(rx~=1&&cx~=1)||(ry~=1&&cy~=1)
    alpha = 'FAILED';
    return
end
if rx*cx~=ry*cy
    alpha = 'FAILED';
    return
end
if rx == 1
    if ry == 1
        for i=1:cx
            alpha = x(1,i)*y(1,i)+alpha;
        end
    else
        for i=1:cx
            alpha = x(1,i)*y(i,1)+alpha;
        end
    end
else
    if ry == 1
        for i=1:rx
            alpha = x(i,1)*y(1,i)+alpha;
        end
    else
        for i=1:rx
            alpha = x(i,1)*y(i,1)+alpha;
        end
    end
end
return      
end

