%%4 Affichage et manip de signaux audio
clear;
close all;
clc

[x_speech1, fe_speech1] = audioread('../Testing_sounds/speech_testing17.wav');
[x_speech2, fe_speech2] = audioread('./Testing_sounds/speech_testing18.wav');
[x_speech3, fe_speech3] = audioread('./Testing_sounds/speech_testing19.wav');


[x_music1, fe_music1] = audioread('./Testing_sounds/music_testing17.wav');
[x_music2, fe_music2] = audioread('./Testing_sounds/music_testing18.wav');
[x_music3, fe_music3] = audioread('./Testing_sounds/music_testing19.wav');
[x_music4, fe_music4] = audioread('./Testing_sounds/music_testing20.wav');
[x_music5, fe_music5] = audioread('./Testing_sounds/music_testing21.wav');
[x_music6, fe_music6] = audioread('./Testing_sounds/music_testing22.wav');
[x_music7, fe_music7] = audioread('./Testing_sounds/music_testing23.wav');
[x_music8, fe_music8] = audioread('./Testing_sounds/music_testing24.wav');
[x_music9, fe_music9] = audioread('./Testing_sounds/music_testing25.wav');
[x_music10, fe_music10] = audioread('./Testing_sounds/music_testing26.wav');
[x_music11, fe_music11] = audioread('./Testing_sounds/music_testing27.wav');
[x_music12, fe_music12] = audioread('./Testing_sounds/music_testing28.wav');
[x_music13, fe_music13] = audioread('./Testing_sounds/music_testing29.wav');
[x_music14, fe_music14] = audioread('./Testing_sounds/music_testing30.wav');
[x_music15, fe_music15] = audioread('./Testing_sounds/music_testing31.wav');
[x_music16, fe_music16] = audioread('./Testing_sounds/music_testing32.wav');


L = 256;
R = L-15; % recouvrement

load('desc.mat');

type_s1 = KNN(x_speech1, fe_speech1, L, R, DspeechNorm, DmusicNorm);
type_s2 = KNN(x_speech2, fe_speech2, L, R, DspeechNorm, DmusicNorm);
type_s3 = KNN(x_speech3, fe_speech3, L, R, DspeechNorm, DmusicNorm);

type_m1 = KNN(x_music1, fe_music1, L, R, DspeechNorm, DmusicNorm);
type_m2 = KNN(x_music2, fe_music2, L, R, DspeechNorm, DmusicNorm);
type_m3 = KNN(x_music3, fe_music3, L, R, DspeechNorm, DmusicNorm);
type_m4 = KNN(x_music4, fe_music4, L, R, DspeechNorm, DmusicNorm);
type_m5 = KNN(x_music5, fe_music5, L, R, DspeechNorm, DmusicNorm);
type_m6 = KNN(x_music6, fe_music6, L, R, DspeechNorm, DmusicNorm);
type_m7 = KNN(x_music7, fe_music7, L, R, DspeechNorm, DmusicNorm);
type_m8 = KNN(x_music8, fe_music8, L, R, DspeechNorm, DmusicNorm);
type_m9 = KNN(x_music9, fe_music9, L, R, DspeechNorm, DmusicNorm);
type_m10 = KNN(x_music10, fe_music10, L, R, DspeechNorm, DmusicNorm);
type_m11 = KNN(x_music11, fe_music11, L, R, DspeechNorm, DmusicNorm);
type_m12 = KNN(x_music12, fe_music12, L, R, DspeechNorm, DmusicNorm);
type_m13 = KNN(x_music13, fe_music13, L, R, DspeechNorm, DmusicNorm);
type_m14 = KNN(x_music14, fe_music14, L, R, DspeechNorm, DmusicNorm);
type_m15 = KNN(x_music15, fe_music15, L, R, DspeechNorm, DmusicNorm);
type_m16 = KNN(x_music16, fe_music16, L, R, DspeechNorm, DmusicNorm);







