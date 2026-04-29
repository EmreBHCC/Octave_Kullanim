%5sin(100*pi*t) sinyalin oluşturulması
clear
fm = 50;
T=1/fm;
t = linspace(0,T);
s1 = 5*sin(100*pi*t);
plot(t,s1,'ks')
xlabel ('Zaman(s)')
ylabel ('Bilgi sinyali')


