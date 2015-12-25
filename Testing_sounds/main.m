%%4 Affichage et manip de signaux audio
clear all;
close all;
clc

[xS, feS] = audioread('speech1.wav');
[xM, feM] = audioread('music1.wav');

%soundsc(xS, feS);
%soundsc(xM, feM);

N = 2.^(nextpow2(length(xS))); %xs et xm ont la même longueur

M = 256;
M_rec = M-1; % recouvrement

tS= 0:1/feS : length(xS)/feS - 1/feS;
tM= 0:1/feM : length(xM)/feM - 1/feM;

figure,
subplot 211, plot(tS, xS), title('Speech signal'), ...
    xlabel('Time(s)'), ylabel('Signal magnitude')
subplot 212, plot(tM, xM), title('Music signal'), ...
    xlabel('Time(s)'), ylabel('Signal magnitude')

fft_xS = fft(xS, N);
fft_xM = fft(xM, N);
freq = linspace(-feS/2, feS/2-feS/N, N);

figure, 
subplot 211, plot(freq, fftshift(abs(fft_xS))), ...
    title ('fftshift Speech signal'), xlabel('Freq(Hz)'), ylabel('FFT')
subplot 212, plot (freq, fftshift(abs(fft_xM))), ...
    title ('fftshift Music signal'), xlabel('Freq(Hz'), ylabel('FFT')

figure, 
subplot 211, spectrogram(xS, hanning(256), 0, 1024, feS, 'yaxis'), title('spectrogram Speech')
subplot 212, spectrogram(xM, hanning(256) , 0, 1024, feM, 'yaxis'), title ('spectrogram Music')

%%découpage en trame
trame_matS = frame_func(xS, M, M_rec);
trame_matM = frame_func(xM, M, M_rec);

%%zcr processing
%%compare deux méthodes de calcul du ZCR
%ZCR1
zcr1xs = zcr(xS, feS);
zcr1xm = zcr(xM, feM);

figure, 
subplot 211, plot(zcr1xs), title('ZCR Speech')
subplot 212, plot(zcr1xm), title('ZCR Music')

varxS_ZCR = var(zcr1xs);
varxM_ZCR = var(zcr1xm);


%ZCR2 a implémenter avec trame_mat au lieu de tout le signal
% a faire plus tard

%zcr2xs = zcr2(trame_matS);
%zcr2xm = zcr2(trame_matM);


%varxS2 = var(zcr2xs);
%varxM2 = var(zcr2xm);

nbTrameFaibleNRJS = energie_fun(xS,feS);
nbTrameFaibleNRJM = energie_fun(xM,feM);

figure,
subplot 211, plot(nbTrameFaibleNRJS), title('Faible E Speech signal')
subplot 212, plot(nbTrameFaibleNRJM), title('Faible E Music signal')

varxS_energie = var(nbTrameFaibleNRJS);
varxM_energie = var(nbTrameFaibleNRJM);


SCSpeech = centroid(xS, feS);
SCMusic = centroid(xM, feM);

figure,
subplot 211, plot(SCSpeech), title('Centroid Speech signal')
subplot 212, plot(SCMusic), title('Centroid Music signal')

SRPSpeech = SRP(xS);
SRPMusic = SRP(xM);

figure,
subplot 211, plot(SRPSpeech), title('SRP Speech signal')
subplot 212, plot(SRPMusic), title('SRP Music signal')






