
%% Spectogramme
clear all;
close all;
dbstop if error

[x, fs] = audioread('sinusoides.wav');

Nfft = 2048;
Nfft_spec = 512;

figure,
spectrogram(x, rectwin(Nfft_spec), 0, Nfft_spec, fs);

X = fft(x, Nfft);
X_r = fftshift(abs(X));
figure,
plot(-fs/2:fs/Nfft:fs/2-fs/Nfft, X_r), title ('|x|'), xlabel('f (Hz)')p