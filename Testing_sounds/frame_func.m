function [frame_mat] = frame_func(s, M, M_rec)
N = length(s);
Nb_trames = floor((N-M)/(M-M_rec));
frame_mat = zeros(Nb_trames, M);
for i=1:Nb_trames
    frame_mat(i,:) = s((i-1)*1*(M-M_rec)+1:(i-1) * (M-M_rec)+M);
end
end