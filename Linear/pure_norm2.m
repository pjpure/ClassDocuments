function [alpha] = pure_norm2(x)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[rx,cx] = size(x);
alpha = 0;
if ~isvector(x)
    alpha = 'FAILED';
    return
end
if rx~=1 && cx~=1
    alpha = 'FAILED';
    return
end
if rx==1
    for i=1:cx
        alpha = x(1,i)*x(1,i)+alpha;
    end
else
    for i=1:rx
        alpha = x(i,1)*x(i,1)+alpha;
    end
end
alpha = sqrt(alpha);
end

