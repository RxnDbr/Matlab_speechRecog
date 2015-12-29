
%calcul energie signal
function comparer = energie_fun(x, fe, L, R)
nbSec = floor(length(x)/fe);

for i=1:nbSec-1
    totalNRJ=pow_fun(x(i*fe:(i+1)*fe)); 
    frame_mat = frame_func(x(i*fe:(i+1)*fe), L, R);
    comparer(i) = 0;
    for j=1:length(frame_mat(:,1))
        trameNRJ=pow_fun(frame_mat(j,:));
        if (trameNRJ<0.5*totalNRJ)
            comparer(i) = comparer(i) + 1;
        end
    end
        comparer(i)= comparer(i)/length(frame_mat(:,1));
end
   
    