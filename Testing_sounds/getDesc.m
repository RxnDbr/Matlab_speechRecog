function desc = getDesc(sig, fe, L, R)
    trame_mat = frame_func(sig, L, R);
    energie_val = energie_fun(sig,fe, L, R); %taux faible energie
    for i=1:length(trame_mat(:,1))
        zcr_val(i) = zcr(trame_mat(i, :));
        centroid_val(i) = centroid(trame_mat(i, :), fe);
        SRP_val(i) = SRP(trame_mat(i, :));        
    end
    desc = [var(zcr_val); 
        var(energie_val); 
        var(centroid_val);
        var(SRP_val)];
    
end