clear all;
close all;
clc

[x_speech1, fe_speech1] = audioread('./Testing_sounds/speech_testing1.wav');
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

L = 256;
R = L-15;

Dspeech = zeros(16,4);
Dspeech(1,:) = transpose(getDesc(x_speech1, fe_speech1, L, R));
Dspeech(2,:) = transpose(getDesc(x_speech2, fe_speech2, L, R));
Dspeech(3,:) = transpose(getDesc(x_speech3, fe_speech3, L, R));
Dspeech(4,:) = transpose(getDesc(x_speech4, fe_speech4, L, R));
Dspeech(5,:) = transpose(getDesc(x_speech5, fe_speech5, L, R));
Dspeech(6,:) = transpose(getDesc(x_speech6, fe_speech6, L, R));
Dspeech(7,:) = transpose(getDesc(x_speech7, fe_speech7, L, R));
Dspeech(8,:) = transpose(getDesc(x_speech8, fe_speech8, L, R));
Dspeech(9,:) = transpose(getDesc(x_speech9, fe_speech9, L, R));
Dspeech(10,:) = transpose(getDesc(x_speech10, fe_speech10, L, R));
Dspeech(11,:) = transpose(getDesc(x_speech11, fe_speech11, L, R));
Dspeech(12,:) = transpose(getDesc(x_speech12, fe_speech12, L, R));
Dspeech(13,:) = transpose(getDesc(x_speech13, fe_speech13, L, R));
Dspeech(14,:) = transpose(getDesc(x_speech14, fe_speech14, L, R));
Dspeech(15,:) = transpose(getDesc(x_speech15, fe_speech15, L, R));
Dspeech(16,:) = transpose(getDesc(x_speech16, fe_speech16, L, R));

Dmusic = zeros(16,4);
Dmusic(1,:) = transpose(getDesc(x_music1, fe_music1, L, R));
Dmusic(2,:) = transpose(getDesc(x_music2, fe_music2, L, R));
Dmusic(3,:) = transpose(getDesc(x_music3, fe_music3, L, R));
Dmusic(4,:) = transpose(getDesc(x_music4, fe_music4, L, R));
Dmusic(5,:) = transpose(getDesc(x_music5, fe_music5, L, R));
Dmusic(6,:) = transpose(getDesc(x_music6, fe_music6, L, R));
Dmusic(7,:) = transpose(getDesc(x_music7, fe_music7, L, R));
Dmusic(8,:) = transpose(getDesc(x_music8, fe_music8, L, R));
Dmusic(9,:) = transpose(getDesc(x_music9, fe_music9, L, R));
Dmusic(10,:) = transpose(getDesc(x_music10, fe_music10, L, R));
Dmusic(11,:) = transpose(getDesc(x_music11, fe_music11, L, R));
Dmusic(12,:) = transpose(getDesc(x_music12, fe_music12, L, R));
Dmusic(13,:) = transpose(getDesc(x_music13, fe_music13, L, R));
Dmusic(14,:) = transpose(getDesc(x_music14, fe_music14, L, R));
Dmusic(15,:) = transpose(getDesc(x_music15, fe_music15, L, R));
Dmusic(16,:) = transpose(getDesc(x_music16, fe_music16, L, R));

tempS = Dmusic;
for i=1 : length(tempS(1,:))
    DmusicNorm(:,i) = (tempS(:,i) - mean(tempS(:,i)))/std(tempS(:,i));
end

tempM = Dspeech;
for i=1 : length(tempS(1,:))
    DspeechNorm(:,i) = (tempM(:,i) - mean(tempM(:,i)))/std(tempM(:,i));
end
%m1 = moyenneDescripteur(Dspeech);
%m2 = moyenneDescripteur(Dmusic);


figure, plot(DspeechNorm(:,1), DspeechNorm(:,3), 'bx');
hold on 
plot(DmusicNorm(:,1), DmusicNorm(:,3), 'rx');
hold off
save('desc.mat', 'DmusicNorm', 'DspeechNorm');