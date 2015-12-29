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

for 






