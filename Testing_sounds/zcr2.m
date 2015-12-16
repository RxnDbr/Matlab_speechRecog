function zcr_vect2 = zcr2(frame_mat)

for i=1:length(frame_mat(:,1)) %pour chacune des trames
    sum1 = 0;
    for j=1:length(frame_mat(1,:))-1
        sum1 = sum1 + abs(sign(frame_mat(i, j+1)) - sign(frame_mat(i,j)));
    end
    zcr_vect2(i) = 1/(length(frame_mat(1,:))*2)*sum1;
end
end