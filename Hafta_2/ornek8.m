clc;
close all;
clear;

f1=10;
s=[1 0 1 0 0 1 0];
a=length(s);

for i=1:a
  if s(1,i) == 1
    freg=f1*s(1,i);
    for t=(i-1)*100+1:i*100
      x(t)=sin(2*pi*freg*t/1000);
    endfor
  elseif s(1,i) == 0
    b=(2*s(1,i))+1;
    freg=f1*b;
    for t=(i-1)*100+1:i*100
      x(t)=-sin(2*pi*freg*t/1000);
    endfor
  endif
endfor

plot(x);
xlabel('zaman');ylabel('genlik');
title('ikili faz kaydırmalı anahtarlama BPSK');grid on;
