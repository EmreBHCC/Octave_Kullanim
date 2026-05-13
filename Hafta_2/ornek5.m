% sayisal sinyal ornegi
fm= 50; T= 1/fm; t= linspace(0,T);
u1= 5*sin(2*pi*fm*t);
subplot(311);plot(t,u1);
ylabel('bilgi sinyali')

t2= 0:1/(5*fm):T; % fm katsayısını değiştirerek örnekleme sayısını değiştirebiliriz
x = length(t2);
or= ones(1,x);
subplot(312);
stem(t2,or,'r');
ylabel('Ornekleme darbesi')

t3= 0:1/(5*fm):T;
u2= 5*sin(2*pi*fm*t3);
subplot(313);
stem(t3,u2,'filled');
ylabel('Ornekleme Sinyali');
xlabel('zaman')

