%%4 Affichage et manip de signaux audio
clear all;
close all;
clc

[xS, feS] = audioread('speech1.wav');
[xM, feM] = audioread('music1.wav');

%soundsc(xS, feS);
%soundsc(xM, feM);

N = 2.^(nextpow2(length(xS))); %xs et xm ont la même longueur

L = 256;
R = L-15; % recouvrement

%%découpage en trame
trame_matS = frame_func(xS, L, R);
trame_matM = frame_func(xM, L, R);

%%zcr processing

for i=1:length(trame_matS(:,1))
    zcr1xs(i) = zcr(trame_matS(i, :));
end

for i=1:length(trame_matM(:,1))
    zcr1xm(i) = zcr(trame_matM(i, :));
end

figure, 
subplot 211, plot(zcr1xs), title('ZCR Speech')
subplot 212, plot(zcr1xm), title('ZCR Music')

varxS_ZCR = var(zcr1xs);
varxM_ZCR = var(zcr1xm);

nbTrameFaibleNRJS = energie_fun(xS,feS,L, R);
nbTrameFaibleNRJM = energie_fun(xM,feM, L, R);

figure,
subplot 211, plot(nbTrameFaibleNRJS), title('Faible E Speech signal')
subplot 212, plot(nbTrameFaibleNRJM), title('Faible E Music signal')

varxS_energie = var(nbTrameFaibleNRJS);
varxM_energie = var(nbTrameFaibleNRJM);

for i=1:length(trame_matS(:,1))
    SCSpeech(i) = centroid(trame_matS(i, :), feS);
end

for i=1:length(trame_matM(:,1))
    SCMusic(i) = centroid(trame_matM(i, :), feM);
end

figure,
subplot 211, plot(SCSpeech), title('Centroid Speech signal')
subplot 212, plot(SCMusic), title('Centroid Music signal')

varxS_SC = var(SCSpeech);
varxM_SC = var(SCMusic);

for i=1:length(trame_matS(:,1))
    SRPSpeech(i) = SRP(trame_matS(i, :));
end

for i=1:length(trame_matM(:,1))
    SRPMusic(i) = SRP(trame_matM(i, :));
end

figure,
subplot 211, plot(SRPSpeech), title('SRP Speech signal')
subplot 212, plot(SRPMusic), title('SRP Music signal')

varxS_SRP = var(SRPSpeech);
varxM_SRP = var(SRPMusic);


varxS = [varxS_ZCR ; varxS_energie ; varxS_SC ; varxS_SRP];
varxM = [varxM_ZCR ; varxM_energie ; varxM_SC ; varxM_SRP];





