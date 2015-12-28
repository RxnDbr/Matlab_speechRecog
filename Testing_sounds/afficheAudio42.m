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
