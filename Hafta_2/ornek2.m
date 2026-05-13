Fs  = 1000;
T = 1 / Fs;
L = 1000;
t = (0:L-1)*T;
x = 0.7*sin(2*pi*50*t);
y = 1*sin(2*pi*120*t);
z = x+y;
a = z+2*randn(size(t));
plot(Fs*t(1:50),a(1:50));
title('gurultulu bozulmuş sinyal')
xlabel('zaman')
NFFT= 2^nextpow2(L);
Y= fft(a,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2);

figure
plot(f,2*abs(Y(1:NFFT/2)))
title('Tek Yanlı genişlik spektrumu')
xlabel('frekans')
ylabel('|Y(f)|')
