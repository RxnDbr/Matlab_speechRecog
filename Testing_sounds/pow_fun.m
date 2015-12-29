function [pow_s] = pow_fun(s)
    n = length(s); %avec ou sans le 0 pading ? 
    pow_s = 1/n*sum(abs(s).^2);
end