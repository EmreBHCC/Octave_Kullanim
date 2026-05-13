clc;
clear;
close all;
s=[1 0 1 0 1 0 1 1];
f1=20;
a=length(s);
for i=1:a
  f=f1*s(1,i);
  for t=(i-1)*100+1:i*100
    x(t)=sin(2*pi*f*t/1000);
  endfor
end
plot(x);
xlabel('zaman');ylabel('genlik');
title('Genlik kaydırmalı anahtarlama ASK');grid on;
