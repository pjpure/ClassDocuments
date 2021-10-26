function [x_out] = pure_scal(alpha,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[rx,cx] = size(x);
if ~isscalar(alpha)
    x_out = 'FAILED';
    return
end
if ~isvector(x)
    x_out = 'FAILED';
    return
end
if rx~=1&&cx~=1
    x_out = 'FAILED';
    return
end
if rx==1
    for i=1:cx
        x(1,i) = x(1,i)*alpha;
    end
else
    for i=1:rx
        x(i,1) = x(i,1)*alpha;
    end
end
x_out = x;

end

