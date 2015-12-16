function SC = centroid(sig, fe)
    L = 256; %nb d echantillon par trame
    nbTrame = floor(length(sig)/L); % nb de trame = longueur du signal en sec / nb d echantillon par trame
    for j=0:nbTrame-1
        spectre = fftshift(abs(fft(sig(j*L+1:(j+1)*L), L))); %mettre L si L=256
        spectre = spectre(1:(256/2));
        numerateur = 0;
        denominateur = 0;
        for i=1:(L/2)-1
            freq = ((i-1)/(L/2))*fe;
            numerateur = numerateur + freq * spectre(i);
            denominateur = denominateur + spectre(i);
        end
        SC(j+1) = numerateur/denominateur;
    end
end
        
  