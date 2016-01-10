%%4 Affichage et manip de signaux audio
clear;
close all;
clc

[xS, feS] = audioread('speech1.wav');
[xM, feM] = audioread('music1.wav');


[x_speech1, fe_speech1] = audioread('../Testing_sounds/speech_testing1.wav');
[x_speech2, fe_speech2] = audioread('./Testing_sounds/speech_testing2.wav');
[x_speech3, fe_speech3] = audioread('./Testing_sounds/speech_testing3.wav');
[x_speech4, fe_speech4] = audioread('./Testing_sounds/speech_testing4.wav');
[x_speech5, fe_speech5] = audioread('./Testing_sounds/speech_testing5.wav');
[x_speech6, fe_speech6] = audioread('./Testing_sounds/speech_testing6.wav');
[x_speech7, fe_speech7] = audioread('./Testing_sounds/speech_testing7.wav');
[x_speech8, fe_speech8] = audioread('./Testing_sounds/speech_testing8.wav');
[x_speech9, fe_speech9] = audioread('./Testing_sounds/speech_testing9.wav');
[x_speech10, fe_speech10] = audioread('./Testing_sounds/speech_testing10.wav');
[x_speech11, fe_speech11] = audioread('./Testing_sounds/speech_testing11.wav');
[x_speech12, fe_speech12] = audioread('./Testing_sounds/speech_testing12.wav');
[x_speech13, fe_speech13] = audioread('./Testing_sounds/speech_testing13.wav');
[x_speech14, fe_speech14] = audioread('./Testing_sounds/speech_testing14.wav');
[x_speech15, fe_speech15] = audioread('./Testing_sounds/speech_testing15.wav');
[x_speech16, fe_speech16] = audioread('./Testing_sounds/speech_testing16.wav');

[x_music1, fe_music1] = audioread('./Testing_sounds/music_testing1.wav');
[x_music2, fe_music2] = audioread('./Testing_sounds/music_testing2.wav');
[x_music3, fe_music3] = audioread('./Testing_sounds/music_testing3.wav');
[x_music4, fe_music4] = audioread('./Testing_sounds/music_testing4.wav');
[x_music5, fe_music5] = audioread('./Testing_sounds/music_testing5.wav');
[x_music6, fe_music6] = audioread('./Testing_sounds/music_testing6.wav');
[x_music7, fe_music7] = audioread('./Testing_sounds/music_testing7.wav');
[x_music8, fe_music8] = audioread('./Testing_sounds/music_testing8.wav');
[x_music9, fe_music9] = audioread('./Testing_sounds/music_testing9.wav');
[x_music10, fe_music10] = audioread('./Testing_sounds/music_testing10.wav');
[x_music11, fe_music11] = audioread('./Testing_sounds/music_testing11.wav');
[x_music12, fe_music12] = audioread('./Testing_sounds/music_testing12.wav');
[x_music13, fe_music13] = audioread('./Testing_sounds/music_testing13.wav');
[x_music14, fe_music14] = audioread('./Testing_sounds/music_testing14.wav');
[x_music15, fe_music15] = audioread('./Testing_sounds/music_testing15.wav');
[x_music16, fe_music16] = audioread('./Testing_sounds/music_testing16.wav');



%soundsc(xS, feS);
%soundsc(xM, feM);

N = 2.^(nextpow2(length(xS))); %xs et xm ont la même longueur

L = 256;
R = L-15; % recouvrement

load('desc.mat');

typexS = KNN(xS, feS, L, R, DspeechNorm, DmusicNorm);
typexM = KNN(xM, feM, L, R, DspeechNorm, DmusicNorm);

type_s1 = KNN(x_speech1, fe_speech1, L, R, DspeechNorm, DmusicNorm);
type_s2 = KNN(x_speech2, fe_speech2, L, R, DspeechNorm, DmusicNorm);
type_s3 = KNN(x_speech3, fe_speech3, L, R, DspeechNorm, DmusicNorm);
type_s4 = KNN(x_speech4, fe_speech4, L, R, DspeechNorm, DmusicNorm);
type_s5 = KNN(x_speech5, fe_speech5, L, R, DspeechNorm, DmusicNorm);
type_s6 = KNN(x_speech6, fe_speech6, L, R, DspeechNorm, DmusicNorm);
type_s7 = KNN(x_speech7, fe_speech7, L, R, DspeechNorm, DmusicNorm);
type_s8 = KNN(x_speech8, fe_speech8, L, R, DspeechNorm, DmusicNorm);
type_m1 = KNN(x_music1, fe_music1, L, R, DspeechNorm, DmusicNorm);
type_m2 = KNN(x_music2, fe_music2, L, R, DspeechNorm, DmusicNorm);
type_m3 = KNN(x_music3, fe_music3, L, R, DspeechNorm, DmusicNorm);
type_m4 = KNN(x_music4, fe_music4, L, R, DspeechNorm, DmusicNorm);
type_m5 = KNN(x_music5, fe_music5, L, R, DspeechNorm, DmusicNorm);
type_m6 = KNN(x_music6, fe_music6, L, R, DspeechNorm, DmusicNorm);
type_m7 = KNN(x_music7, fe_music7, L, R, DspeechNorm, DmusicNorm);
type_m8 = KNN(x_music8, fe_music8, L, R, DspeechNorm, DmusicNorm);
type_m9 = KNN(x_music9, fe_music9, L, R, DspeechNorm, DmusicNorm);







