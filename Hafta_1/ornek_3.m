%5sin(50*pi*t) ile 3cos(50*pi*t) sinyalin oluşturulması
%hold on: grafik çizimleri üst üste
f1 = 25;
T=1/f1;
t = linspace(0,T);
s1 = 5*sin(2*f1*pi*t);
hold on;
grid on;
plot(t,s1,'ks');
s2 = 3*cos(2*f1*pi*t)
plot(t,s2,'rd')
xlabel = 'Zaman(s)'
ylabel = 'Bilgi sinyali'
title = 'Sin ve Cos Sinyalleri'

