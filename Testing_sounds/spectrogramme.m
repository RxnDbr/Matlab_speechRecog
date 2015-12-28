
%% Spectogramme
clear all;
close all;
dbstop if error

[x, fs] = audioread('sinusoides.wav');

N = 2048;
M = 512;
R = 0; %pas de recouvrement

figure,
spectrogram(x, M, R, N, fs);
%spectrogram(x, rectwin(Nfft_spec), 0, Nfft_spec, fs);

X = fft(x, N);
X_r = fftshift(abs(X));
figure,
plot(-fs/2:fs/N:fs/2-fs/N, X_r), title ('|x|'), xlabel('f (Hz)')