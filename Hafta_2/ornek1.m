% C = B log2(1 +(S/N))
SN0_DB = -20:0.1:40 %başlangıç : değişim : bitiş
B = 5000;
SN0 =  10.^(SN0_DB./10);
C = B.*log2(1 + SN0);
semilogx(SN0, C,'r')
xlabel('S/N0')
ylabel('C(bit/s)')
