%3 grafik altalta göstertme
clear
f1 = 25;
f2 = 50;
T=1/f1;
t = linspace(0,T);
s1 = 5*sin(2*f1*pi*t);
subplot(311);
plot(t,s1,'ks');
xlabel ('Zaman(s)')
ylabel ('Bilgi sinyali')
title ('5Sin Sinyali')
s2 = 3*cos(2*f1*pi*t);
subplot(3,1,2);
plot(t,s2,'r*');
xlabel ('Zaman(s)')
ylabel ('Bilgi sinyali')
title ('3 Cos Sinyali')
s3 = 10*sin(2*f2*pi*t);
subplot(3,1,3);
plot(t,s3,'md');
xlabel ('Zaman(s)')
ylabel ('Bilgi sinyali')
title ('10 Sin Sinyali')

