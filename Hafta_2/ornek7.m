clc;
clear;
close all;
f1=10;
f2=30;
s=[1 0 1 0 1 0 1];
a=length(s);

for i=1:a
  if s(1,i) == 1
    freg=f1*s(1,i);
    f=f1*s(1,i);
    for t=(i-1)*100+1:i*100
      x(t)=sin(2*pi*freg*t/1000);
    endfor
  elseif s(1,i) == 0
    b=(2*s(1,i))+1;
    freg=f2*b;
    for t=(i-1)*100+1:i*100
      x(t)=sin(2*pi*freg*t/1000);
    endfor
  endif
endfor

plot(x);
xlabel('zaman');ylabel('genlik');
title('Frekans kaydırmalı anahtarlama FSK');grid on;
