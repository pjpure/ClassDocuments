function [y_out] = pure_copy(x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[rx,cx] = size(x);
[ry,cy] = size(y);

if(rx~=1&&cx~=1)||(ry~=1&&cy~=1)
    y_out = 'FAILED';
    return
end
if rx*cx~=ry*cy
    y_out = 'FAILED';
    return
end
if rx == 1
    if ry == 1
        for i=1:cx
            y(1,i) = x(1,i);
        end
    else
        for i=1:cx
            y(i,1) = x(1,i);
        end
    end
else
    if ry == 1
        for i=1:rx
            y(1,i) = x(i,1);
        end
    else
        for i=1:rx
            y(i,1) = x(i,1);
        end
    end
end
y_out = y;
return      
end

