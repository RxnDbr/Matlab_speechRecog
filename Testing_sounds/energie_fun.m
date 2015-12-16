
%calcul energie signal
function comparer = energie_fun(x, fe)
nbSec = floor(length(x)/fe);
M = 256;
M_rec = M-1;


for i=1:nbSec-1
    a=pow_fun(x(i*fe:(i+1)*fe));
    frame_mat = frame_func(x(i*fe:(i+1)*fe), M, M_rec);
    comparer(i) = 0;
    for j=1:length(frame_mat(:,1))
        b=pow_fun(frame_mat(j,:));
        if (b<0.5*a)
            comparer(i) = comparer(i) + 1;
        end
    end
        comparer(i)= comparer(i)/length(frame_mat(:,1));
end
   
    