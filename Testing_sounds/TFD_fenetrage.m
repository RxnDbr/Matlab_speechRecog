
%%TFD et fenetrage
clear all;
close all;

%définition de M
M = 256;
%définition de f0

f0 = 2000;
%définition de fe

fech = 10000;
%Déinition d'un axe temporel
n = 0: M-1;
%création d'un signal x/pi
x = sin(2*pi*n*f0/fech); %vecteur avec toutes les valeurs des elmts echantillons

%Défintion de N1 et N2
N1 = 256;
N2 = 2048;

%TFD avec N1 puis N2
n1fft = fft(x, N1);
n2fft = fft(x, N2);

%Mises en forme des TFDs pour leur représentations + création des axes de
%fréquences
n1axe = -fech/2:fech/N1:fech/2-fech/N1;
n2axe = -fech/2:fech/N2:fech/2-fech/N2;

n1_x_rep = fftshift(abs(n1fft));
n2_x_rep = fftshift(abs(n2fft));

%Affichage des 2 TFDs
figure, plot(n1axe, n1_x_rep), title('N1'), ylim([0,150])

figure, plot(n2axe, n2_x_rep), title('N2'),ylim([0,150])

% Signal fenetré

%fenetrage
fen_rect = rectwin(M);
fen_han = hanning(M);
%creation des signaux
x_rect = x.' .* fen_rect;
x_han = x.' .* fen_han;
%affichage
figure,
subplot 211, plot(n, x_rect), title('fenetre rect'),xlim([0,255])
subplot 212, plot(n, x_han), title('fenetre hanning'), xlim([0,255])

%TFD des deux signaux

tfd_x_rect = fft(x_rect, N2);
tfd_x_han = fft(x_han, N2);

n2_x_rect = fftshift(abs(tfd_x_rect));
n2_x_han = fftshift(abs(tfd_x_han));

figure, 
subplot 211, plot(n2axe, n2_x_rect), title('TFD rect') % plus les lobes secondaires
subplot 212, plot(n2axe, n2_x_han), title('TFD han')