%cos(200*pi*t) sinyalin oluşturulması
f = 100;
T=1/f;
t = linspace(0,3*T);
s2 = 5*cos(200*pi*t);
plot(t,s2)
xlabel ( 'Zaman(s)')
ylabel ( 'Bilgi sinyali')


