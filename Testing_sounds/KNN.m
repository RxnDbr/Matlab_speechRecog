function typeOfSig = KNN(x, fs, L, R, d1, d2)

    descSig = getDesc(x, fs, L, R);
    
    distD1 = zeros(size(d1));
    distD2 = zeros(size(d2));
    
    distD1 = transpose(abs(transpose(d1) - repmat(descSig, 1, length(d1(:,1)))));
    distD2 = transpose(abs(transpose(d2) - repmat(descSig, 1, length(d2(:,1)))));
    
    for i=1 : length(distD1(1,:))
        distD1(:,i) = (distD1(:,i) - mean(distD1(:,i)))/std(distD1(:,i));
    end
    for i=1 : length(distD2(1,:))
        distD2(:,i) = (distD2(:,i) - mean(distD2(:,i)))/std(distD2(:,i));
    end
    
    totalDistD1 = sum(transpose(distD1));
    totalDistD2 = sum(transpose(distD2));
    
    if min(totalDistD1) < min(totalDistD2)
        typeOfSig = 'speech';
    else
        typeOfSig = 'music';
    end
end
    
    
    