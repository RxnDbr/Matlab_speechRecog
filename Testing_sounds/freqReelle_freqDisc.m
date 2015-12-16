clear all;
close all;
clc
%% 3.1 Fréquence réelle et fréquence discrète

[s, fe] = audioread('sommesinusoides.wav');

M = 500;
s_e = s(1:M);

%TFD
N=1024; %echantillon
S_e = fft(s_e, N);

%Mise en forme pour la représentation graphique
S_e_rep = fftshift(abs(S_e));
%Fréquences réelles
axe_f = -fe/2:fe/N:fe/2-fe/N;
figure, plot(axe_f, S_e_rep), title('[S_e]'), xlabel('fréquences réelles(Hz)')

%fréquences réduites réduit
axe_f = -1/2:1/N:1/2-1/N;
figure, plot(axe_f, S_e_rep), title('[S_e]'), xlabel('fréquences réduites')
