function zcrs = zcr(sig, fe)
    L = 256; %nb d echantillon par trame
    nbTrame = floor(length(sig)/L); % nb de trame = longueur du signal en sec / nb d echantillon par trame
    for j=0:nbTrame-1
        nbZero = 0;
        for i=1:L-1
            nbZero = nbZero + abs(sig(j*L+i)-sig(j*L+i+1));
        end
        zcrs(j+1) = 1/L * nbZero;
    end
end