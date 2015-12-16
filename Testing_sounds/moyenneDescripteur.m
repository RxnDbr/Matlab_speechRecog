function moyDesc = moyenneDescripteur(groupeSignaux) %ex : ZCR
    moyDesc = [];
    for j=1:length(descripteur(1,:))
        moyDesc(j) = (sum(descripteur(:,j)))/(length(descripteur(:,j)));
    end
end
