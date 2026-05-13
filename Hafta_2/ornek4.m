%Genlik modülasyonu AKB-ÜKB
fa = 500; fc = 5000; Ta=1/fa; Tc=1/fc;
t = 0:(Tc/50):5*Ta;
s = sin(2*pi*fa*t);
subplot(311);plot(t,s);grid on;
title('bilgi işareti');xlabel('zaman');ylabel('Genlik');
%taşıyıcı sinyalinin oluşturulması
c = sin(2*pi*fc*t);
subplot(312);plot(t,c);grid on;
title('tasyıcı işareti');xlabel('zaman');ylabel('Genlik');
%modülasyonlu işaret
m=1;
d=(1+m*s).*c;
subplot(313);plot(t,d);grid on;
title('genlik modülasyonu');xlabel('zaman');ylabel('Genlik');


