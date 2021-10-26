function [y_out] = pure_axpy(alpha,x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[rx,cx] = size(x);
[ry,cy] = size(y);

if ~isscalar(alpha)
    y_out = 'FAILED';
    return
end
if ~isvector(x)||~isvector(y)
    y_out = 'FAILED';
    return
end
if(rx~=1&&cx~=1)||(ry~=1&&cy~=1)
    y_out = 'FAILED';
    return
end
if rx*cx~=ry*cy
    y_out = 'FAILED';
    return
end
if rx~=ry||cx~=cy
    y_out = 'FAILED';
    return
end
    

if rx == 1
    if ry == 1
        for i=1:cx
            y(1,i) = alpha*x(1,i)+y(1,i);
        end
    else
        for i=1:cx
            y(i,1) = alpha*x(1,i)+y(i,1);
        end
    end
else
    if ry == 1
        for i=1:rx
            y(1,i) = alpha*x(i,1)+y(1,i);
        end
    else
        for i=1:rx
            y(i,1) = alpha*x(i,1)+y(i,1);
        end
    end
end
y_out = y;
return      
end

