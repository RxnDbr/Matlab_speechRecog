load('desc.mat');
figure,
plot(m1(1), m1(4), 'rx'); 

s1 = 0;
for i=1:length(Dspeech)
    s1 = s1 + ((Dspeech(i,:)-m1)*transpose(Dspeech(i,:)-m1));
end

s2 = 0;
for i=1:length(Dmusic)
    s2 = s2 + ((Dspeech(i,:)-m2)*transpose(Dspeech(i,:)-m2));
end

Sb = (m1-m2)*transpose(m1-m2);
Sw = s1+s2;

w=(1/Sw)*(m1-m2);

Y = transpose(w);


