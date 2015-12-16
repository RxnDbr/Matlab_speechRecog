clear all;
close all;
clc
%% 3.1 Fr�quence r�elle et fr�quence discr�te

[s, fe] = audioread('sommesinusoides.wav');

M = 500;
s_e = s(1:M);

%TFD
N=1024; %echantillon
S_e = fft(s_e, N);

%Mise en forme pour la repr�sentation graphique
S_e_rep = fftshift(abs(S_e));
%Fr�quences r�elles
axe_f = -fe/2:fe/N:fe/2-fe/N;
figure, plot(axe_f, S_e_rep), title('[S_e]'), xlabel('fr�quences r�elles(Hz)')

%fr�quences r�duites r�duit
axe_f = -1/2:1/N:1/2-1/N;
figure, plot(axe_f, S_e_rep), title('[S_e]'), xlabel('fr�quences r�duites')
