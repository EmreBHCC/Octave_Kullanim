%Genlik modülasyonu AKB-ÜKB
fa = 500; fc = 5000; Ta=1/fa; Tc=1/fc; %
t = 0:(Tc/50):5*Ta; %
s = sin(2*pi*fa*t);
% Bilgi sinyalinin oluşturulması
subplot(411);plot(t,s);grid on; %
title('bilgi işareti');xlabel('zaman');ylabel('Genlik');
c = sin(2*pi*fc*t); %
% taşıyıcı sinyalinin oluşturulması
subplot(412);plot(t,c);grid on;
title('tasyıcı işareti');xlabel('zaman');ylabel('Genlik');
m=1; % ideal durum
d=(1+m*s).*c; %
% modülasyonlu işaret
subplot(413);plot(t,d);grid on;
title('genlik modülasyonu');xlabel('zaman');ylabel('Genlik');

m=0.5; % ideal olmadığı için
g=(1+m*s).*c; %
% modülasyonlu işaret
subplot(414);plot(t,g);grid on;
title('genlik modülasyonu');xlabel('zaman');ylabel('Genlik');


