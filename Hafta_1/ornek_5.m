%5sin(50*pi*t) ile 3cos(50*pi*t) sinyalin  farklı pencerelerde oluşturulması
f1 = 25;
T=1/f1;
t = linspace(0,T);
s1 = 5*sin(2*f1*pi*t);
figure(1);
plot(t,s1,'ks')
s2 = 3*cos(2*f1*pi*t);
figure(2);
plot(t,s2,'rd')
