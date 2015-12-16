
%calcul energie signal
function [comparer] = energie_fun(x, fe)
nbSec = floor(length(x)/fe);
M = 256;
M_rec = M-1;


for i=1:nbSec-1
    a=pow_fun(x(i:i+1));
    frame_mat = frame_func(x(i:i+1), M, M_rec)
    for j=1:length(frame_mat(1,:))
        b=pow_fun(frame_mat(j));
        if (b<0.5*a)
            comparer(i) = comparer(i) + 1;
        end
    end
end
    
%for i=1:frame_mat(1,:)
%    energie = pow_fun(frame_mat(i));
    