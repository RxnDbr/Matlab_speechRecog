function SRP = SRP(sig)
    L = 256; %nb d echantillon par trame
    nbTrame = floor(length(sig)/L); % nb de trame = longueur du signal en sec / nb d echantillon par trame
    for j=0:nbTrame-1
        spectre = fftshift(abs(fft(sig(j*L+1:(j+1)*L), L))); 
        spectre = spectre(1:(256/2));
        ref=0;
        value=0;
        K=0;
       
        for i=1:(L/2)-1 % ne prend que les fréquences positives sur la trame
            ref = ref + spectre(i)^2;
        end
       
        for i=1:(L/2)-1
            value = value + spectre(i)^2;
            if (value < 0.95*ref)
                K = i;
            end
        end
        SRP(j+1)=K;
    end
            
           