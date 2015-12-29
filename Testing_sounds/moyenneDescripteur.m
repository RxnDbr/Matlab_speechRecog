function moyDesc = moyenneDescripteur(ensemble) 
    moyDesc = [];
    for j=1:length(ensemble(1,:))
        moyDesc(j) = (sum(ensemble(:,j)))/(length(ensemble(:,j)));
    end
end

