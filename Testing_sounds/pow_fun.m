function [pow_s] = pow_fun(s)
    n = length(s);
    pow_s = 1/n*sum(abs(s).^2);
end