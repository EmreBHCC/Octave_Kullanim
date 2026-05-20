Fs  = 1000; %Hz
T = 1 / Fs; %periyot
L = 1000; %işaretin uzunluğu
t = (0:L-1)*T; % zaman vektörü
x = 0.7*sin(2*pi*50*t); % 50Hz lik sinyal
y = 1*sin(2*pi*120*t); % 120Hz lik sinyal
z = x+y; % iki sinyal toplanır
a = z+2*randn(size(t)); % rastegele gürültü
plot(Fs*t(1:50),a(1:50));
title('gurultulu bozulmuş sinyal')
xlabel('zaman')
NFFT= 2^nextpow2(L); % fft uzunluğunun hesaplanması
Y= fft(a,NFFT)/L; % normalize edilen fft
f = Fs/2*linspace(0,1,NFFT/2); %sinyali dağıtma işlemi yapar
figure
plot(f,2*abs(Y(1:NFFT/2)))
title('Tek Yanlı genişlik spektrumu')
xlabel('frekans')
ylabel('|Y(f)|')
