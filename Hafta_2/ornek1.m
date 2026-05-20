% C = B log2(1 +(S/N))
SN0_DB = -20:0.1:40 %başlangıç : değişim : bitiş
B = 5000;%hertz
SN0 =  10.^(SN0_DB./10);% . ifadesi ifadenin skaler çarpıldığını
C = B.*log2(1 + SN0); %shannon kapasite formulü
semilogx(SN0, C,'r') %değişimi görmek için logaritma
xlabel('S/N0')
ylabel('C(bit/s)')
