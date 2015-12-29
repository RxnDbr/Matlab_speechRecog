function SC = centroid(sig, fe)
    spectre = fftshift(abs(fft(sig, length(sig(1,:)))));
    spectre = spectre(1:(length(sig(1,:))/2));
    numerateur = 0;
    denominateur = 0;
    for i=1: (length(sig(1,:))/2)-1
        freq = ((i-1)/(length(sig(1,:))/2))*fe;
        numerateur = numerateur + freq * spectre(i);
        denominateur = denominateur + spectre(i);      
    end
    SC = numerateur/denominateur;
        
  