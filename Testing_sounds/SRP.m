function SRP_val = SRP(sig)
    N = 2.^(nextpow2(length(sig(1,:))));
    spectre = fftshift(abs(fft(sig,N))); %marche ici car on a choisi 256
    spectre = spectre(1:N/2);
    ref=0;
    value=0;
    K=0;    
    for i=1:(length(sig(1,:))/2)-1 % ne prend que les fréquences positives sur la trame
        ref = ref + spectre(i)^2;
    end

    for i=1:(length(sig)/2)-1
        value = value + spectre(i)^2;
        if (value < 0.95*ref)
            K = i;
        end
    end
    SRP_val=K;
end
            
           